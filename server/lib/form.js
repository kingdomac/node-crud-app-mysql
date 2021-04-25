exports.formatErrors = (validationErrors) => {
  // transfors errors array to errors of object key is the name of field and value is the message
  let errorsByFields = {};
  //console.log(formErrors);
  const {
    error: { details: errors },
  } = validationErrors;
  errors.map((error) => {
    const {
      context: { key },
      message,
    } = error;

    errorsByFields[key] = message;
  });
  return errorsByFields;
};
