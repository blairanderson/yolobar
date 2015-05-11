module Yolobar
  module Rails
    module ViewHelpers
      def yolobar_error(options={})
        if flash[:error] || error
          render partial: "yolobar/script_partial", locals: {
              method: "Error",
              message: flash[:error] || error,
              options: options
          }
        end
      end

      def yolobar_notice(options={})
        if flash[:notice] || notice
          render partial: "yolobar/script_partial", locals: {
              method: "Notice",
              message: flash[:notice] || notice,
              options: options
          }
        end
      end

      def yolobar_alert(options={})
        if flash[:alert] || alert
          render partial: "yolobar/script_partial", locals: {
              method: "Warning",
              message: flash[:alert] || alert,
              options: options
          }
        end
      end

      def yolobars(options={})
        yolobar_alert(options) if flash[:alert]
        yolobar_error(options) if flash[:error]
        yolobar_notice(options) if flash[:notice]
      end

    end
  end
end
