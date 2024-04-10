const axios = require('axios');
const fetch = require('sync-fetch');
const assert = require('assert');

function getLocalesPromise() {
    // Fetch language tags from an external source
    const url = 'https://capps.capstan.be/langtags_json.php';
    return axios.get(url).then(response => {
        return response.data.map(entry => entry.BCP47);
    }).catch(error => {
        console.error(`Error fetching language tags: ${error.message}`);
        return [];
    });
}

async function getLocales() {
    try {
        // Fetch language tags from an external source
        const url = 'https://capps.capstan.be/langtags_json.php';
        const response = await axios.get(url);
        return response.data.map(entry => entry.BCP47);
    } catch (error) {
        console.error(`Error fetching language tags: ${error.message}`);
        return [];
    }
}

// Usage:
const x = getLocales()

console.log(x)


function getLangtags() {
    const url = 'https://capps.capstan.be/langtags_json.php'
    const json = fetch(url, {}).json()
    return Object.values(json) // object type
}

// console.log(langtags)

console.time("getLocales");
const locales = getLocales();
console.timeEnd("getLocales");

console.time("getLangtags");
const langtags = getLangtags();
console.timeEnd("getLangtags");




const { message } = new assert.AssertionError({
  actual: 1,
  expected: 2,
  operator: 'strictEqual',
});

try {
    assert(locales, langtags);
    console.log("equal")
} catch (err) {
    assert(err instanceof assert.AssertionError);
    assert.strictEqual(err.message, message);
    assert.strictEqual(err.name, 'AssertionError');
    assert.strictEqual(err.actual, 1);
    assert.strictEqual(err.expected, 2);
    assert.strictEqual(err.code, 'ERR_ASSERTION');
    assert.strictEqual(err.operator, 'strictEqual');
    assert.strictEqual(err.generatedMessage, true);
}

