set -e

api_url="https://swapi.dev/api/people/${INPUT_PERSON_ID}"
echo $api_url

person_name=$(curl "${api_url}" | jq ".name")
echo $person_name
echo "::set-output name=person_name::$person_name"