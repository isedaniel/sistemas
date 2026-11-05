const pantry = [
  { sku: "A10", name: "Tomatoes", qty: 4, expires: "2027-01-01", zone: "fridge" },
  { sku: "D43", name: "Pineapples", qty: 2, expires: "2020-01-01", zone: "general" }
];

const rawData = [
  "A10|Tomatoes|5|2027-01-01",
  "B21|Bananas|10|2027-01-01",
  "C32|Eggs|3|2027-01-01|fridge",
  "C32|Eggs|3|2027-01-01",
  "D43|Pineapples|0|2027-01-01",
  "E54|Peppers|-1|2027-01-01|fridge"
];

function parseShipment(rawData) {
  const seen = new Set();

  return rawData.reduce((acc, curr) => {
    const [sku, name, qty, expires, zone] = curr.split('|');

    if (!seen.has(sku)) {
      seen.add(sku);
      acc.push({
        sku,
        name,
        qty: Number(qty),
        expires,
        zone: zone || "general"
      });
    }
    return acc;
  }, [])
}

function planRestock(pantry, shipment) {
  const skus = new Set(pantry.map(item => item.sku));

  return shipment.map(item => {
    if (item.qty <= 0) {
      return { type: "discard", item };
    }

    if (skus.has(item.sku)) {
      return { type: "restock", item };
    }

    return { type: "donate", item };
  });
}

function groupByZone(actions) {
  return actions.reduce((acc, curr) => {
    const zone = curr.item.zone;

    if (!Object.hasOwn(acc, zone)) {
      acc[zone] = [];
    }
    acc[zone].push(curr);

    return acc;
  }, {})
}

function clonePantry(pantry) { 
  return JSON.parse(JSON.stringify(pantry));
}

const shipment = parseShipment(rawData);
const actions = planRestock(pantry, shipment);
const grouped = groupByZone(actions);
console.log(grouped);