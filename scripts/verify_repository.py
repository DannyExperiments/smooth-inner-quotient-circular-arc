"""Check every file listed in the release ledger and offline visualization."""
import hashlib
from pathlib import Path
from zipfile import ZipFile

ROOT = Path(__file__).resolve().parents[1]
ledger = {}
for row in (ROOT/'SHA256SUMS.txt').read_text().splitlines():
    digest, name = row.split('  ', 1)
    assert name not in ledger
    ledger[name] = digest
for name, digest in ledger.items():
    assert hashlib.sha256((ROOT/name).read_bytes()).hexdigest() == digest, name
assert (ROOT/'paper/manuscript.pdf').read_bytes().startswith(b'%PDF-')
assert (ROOT/'visualization/construction.gif').read_bytes().startswith(b'GIF89a')
with ZipFile(ROOT/'visualization/construction-explorer.zip') as archive:
    assert archive.testzip() is None
    assert archive.read('index.html') == (ROOT/'visualization/index.html').read_bytes()
    assert archive.read('README.md') == (ROOT/'visualization/README.md').read_bytes()
print(f'PASS: {len(ledger)} checksums and matching offline archive')
