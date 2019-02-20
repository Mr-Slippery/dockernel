resolve_source_path () {
	TO_RESOLVE=$1
	RESOLVED=$(docker inspect first | jq '.[].Mounts' | jq -r ".[] | select(.Destination==\"${TO_RESOLVE}\") | .Source")
	if [ -z "${RESOLVED}" ]
	then
		echo -n "${TO_RESOLVE}"
	else
		echo -n "${RESOLVED}"
	fi
}
