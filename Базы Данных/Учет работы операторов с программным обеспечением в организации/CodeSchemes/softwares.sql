DROP TABLE IF EXISTS "softwares";

CREATE TABLE "softwares" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

INSERT INTO softwares (name)
VALUES
  ('PyCharm'),
  ('Visual Studio'),
  ('Anaconda'),
  ('Iputhon'),
  ('PostgreSQL');
INSERT INTO softwares (name)
VALUES
  ('3DsMax'),
  ('Blender'),
  ('Adobe Photoshop'),
  ('Adobe Premier Pro'),
  ('Adobe Audition');

INSERT INTO softwares (name)
VALUES
  ('FL Studio'),
  ('Adobe Illustrator'),
  ('Adobe Media Encoder');
