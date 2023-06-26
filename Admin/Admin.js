<script>
       // Wait for the page to finish loading before adding the event listener
    $(document).ready(function () {

        // Add event listener to the "Update" button
        $("#UpdVend").click(function () {

            // Create a new HTML element that represents the box with the update form
            var updateBox = $("<div>")
                .addClass("update-box")
                .append($("<form>")
                    .append($("<label>")
                        .text("Name:")
                        .append($("<input>")
                            .attr("type", "text")
                            .attr("name", "name")))
                    .append($("<label>")
                        .text("Email:")
                        .append($("<input>")
                            .attr("type", "email")
                            .attr("name", "email")))
                    .append($("<button>")
                        .text("Save")
                        .attr("type", "submit")));

            // Append the new element to the DOM
            $("body").append(updateBox);

            // Optionally, add styles to the new element
            updateBox.css({
                position: "fixed",
                top: "50%",
                left: "50%",
                transform: "translate(-50%, -50%)",
                backgroundColor: "#fff",
                padding: "20px",
                boxShadow: "0 0 10px rgba(0,0,0,0.5)"
            });

            // Prevent the default behavior of the button (submitting the form)
            return false;
        });
       });
</script>