"""Check the partial proof declarations and their axiom dependencies."""
from pathlib import Path
import subprocess

directory = Path(__file__).resolve().parent
run = subprocess.run(
    ["lake", "env", "lean", "-DwarningAsError=true", "Certificate.lean"],
    cwd=directory, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True,
)
print(run.stdout, end="")
run.check_returncode()
expected = {
    f"'{name}' depends on axioms: [propext, Classical.choice, Quot.sound]"
    for name in ('CircularArc.phase_derivative', 'CircularArc.scale_for_length', 'CircularArc.mobius_phase')
}
if set(run.stdout.splitlines()) != expected:
    raise SystemExit("Unexpected theorem names, warnings or axioms")
