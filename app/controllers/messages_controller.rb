 if @message.save
        respond_to do |format|
          format.html { redirect_to user_exercises_path(current_user) }
 -        format.js { ActionCable.server.broadcast "messages_room_#{current_room.id}",
 -        render(partial: 'shared/message', object: @message) }
 +        format.js { ActionCable.server.broadcast "messages_room_#{current_room.id}", render(partial: 'shared/message', object: @message) }
        end
      end
    end