-- DROP TABLE room;
-- DROP TABLE guest;
-- DROP TABLE song;



CREATE TABLE room (
  room_id SERIAL8 AUTO_INCREMENT PRIMARY KEY,
  room_number INT,
  occupants VARCHAR,
  playlist VARCHAR
);


CREATE TABLE guest (
  guest_id SERIAL8 AUTO_INCREMENT PRIMARY KEY,
  guest_name VARCHAR(255) NOT NULL,
  guest_address VARCHAR(255) NOT NULL,
  room_id INT8 REFERENCES room(room_id)
);


INSERT INTO   room_id, room_number, occupants, playlist VALUES ( 1, 'occupants1', 'playlist1');
INSERT INTO   room_id, room_number, occupants, playlist VALUES ( 1, 'occupants2', 'playlist2');
INSERT INTO   room_id, room_number, occupants, playlist VALUES ( 1, 'occupants3', 'playlist3');


INSERT INTO     guest_name, guest_address, room_id ( 'guest1', '2 central RD');







UPDATE room
SET (occupants)  = ('VIP')
WHERE playlist = 'playlist2';





SELECT * FROM room ORDER BY room_number;
SELECT * FROM guest
