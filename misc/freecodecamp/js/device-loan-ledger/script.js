const equipmentLedger = {
  "1": { type: "PC", status: "CheckedOut", borrower: { name: "John Smith", email: "john@acme.org" }, dueDate: "11/30/2025" },
  "2": { type: "Laptop", status: "CheckedIn", borrower: { name: "", email: "" }, dueDate: "" },
  "3": { type: "Laptop", status: "CheckedOut", borrower: { name: "Jane Doe", email: "jane@acme.org" }, dueDate: "10/31/2025" },
  "4": { type: "iPad", status: "CheckedIn", borrower: { name: "", email: "" }, dueDate: "" }
};

function checkoutDevice(ledger, assetTag, borrower) {

  if (!Object.hasOwn(ledger, assetTag)) {
    return {
      ledger,
      message: `${assetTag} not found.`
    };
  }

  if (ledger[assetTag].status == "CheckedOut") {
    return {
      ledger,
      message: `${assetTag} already checked out.`
    };
  }

  const copy = loadLedger(serializeLedger(ledger));

  copy[assetTag].borrower = borrower;
  copy[assetTag].status = "CheckedOut";
  return {
    ledger: copy,
    message: `${assetTag}: ${borrower.name}`
  };

}

function checkinDevice(ledger, assetTag) {
  if (!ledger.hasOwnProperty(assetTag)) {
    return {
      ledger,
      message: `${assetTag} not found in ledger.`
    }
  }

  const copy = loadLedger(serializeLedger(ledger));

  copy[assetTag].borrower = { "name": "", "email": "" };
  copy[assetTag].dueDate = "";
  copy[assetTag].status = "CheckedIn";
  return {
    ledger: copy,
    message: `${assetTag} checked in!`
  }
}

function listOverdueDevices(ledger, today) {
  return Object.values(ledger)
    .filter(e => 
      e.status == 'CheckedOut' && 
      isBefore(e.dueDate, today)
    )
    .sort((a, b) => isBefore(a.dueDate, b.dueDate)? -1 : 1);
}

function isBefore(date1, date2) {
  const [m1, d1, y1] = getDate(date1);
  const [m2, d2, y2] = getDate(date2);

  return (
    (y1 < y2) ||
    (y1 == y2 && m1 < m2) ||
    (y1 == y2 && m1 == m2 && d1 < d2)
  );
}

function getDate(date) {
  return date.split('/').map(e => Number(e));
}

// convert json to json string
function serializeLedger(ledger) {
  return JSON.stringify(ledger);
}

// converts json string to json
function loadLedger(json) {
  return JSON.parse(json);
}