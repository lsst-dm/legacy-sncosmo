install() {
  default_install
  cat <<EOF > $PYDEST/sitecustomize.py
import site
site.addsitedir("$PYDEST")
EOF
  install_ups
}
