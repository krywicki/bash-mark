BASHMARK_DIR:="${HOME}/.local/share/bashmark"

install:
	mkdir -p ${BASHMARK_DIR}
	mkdir -p "${BASHMARK_DIR}/marks"
	cp "./bashmark.sh" "${BASHMARK_DIR}/"
