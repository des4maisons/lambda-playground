exports.handler = function(event, context) {
    console.log(JSON.stringify(event));
    context.done(null);
};

