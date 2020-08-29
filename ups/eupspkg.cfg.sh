install() {
  default_install

  # Inject a sitecustomize.py that allows .pth files to be interpreted.
  # Required for setuptools >= 49.
  cat <<EOF > "$PYDEST/sitecustomize.py"
import os
import site
site.addsitedir(os.path.dirname(__file__))
EOF
}
