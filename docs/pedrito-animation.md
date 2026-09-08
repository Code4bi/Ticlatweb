# Pedrito: saludo con brazo completo

La cara, el casco, los logos, el torso, las piernas y el brazo de la bombilla
usan la imagen original `src/assets/images/pedrito.png`.

El brazo que saluda utiliza `src/assets/images/pedrito-wave-arm.png`, creado con
la herramienta integrada ImageGen a partir de la referencia original. La mano
abierta, la muñeca, el antebrazo, el codo y la manga son una sola imagen continua.
No hay cortes ni giros independientes en la muñeca. Un contorno SVG elimina
el fondo de la imagen generada.

El brazo gira desde el hombro entre −8° y 7°, con tres oscilaciones de amplitud
decreciente y una inclinación del personaje de menos de un grado. El torso se
dibuja por encima del extremo del brazo para cubrir la unión del hombro.
La escala uniforme del brazo es 0,45, un 28,6 % mayor que la versión anterior
(0,35), para igualar el grosor de la manga al del otro brazo. Su anclaje sigue
fijo en el hombro (390, 655). La secuencia completa dura 4,6 segundos y termina
en el botón de WhatsApp.

Se revisaron ambos extremos del movimiento con el personaje ampliado y el
saludo dentro de la página. La imagen se optimiza a WebP con Astro.

## Prompt utilizado

```text
Use case: precise-object-edit. Production 2D animation replacement sprite.
Reference: the attached Pedrito TICLAT mascot. Keep the exact illustration style, blue work shirt colors, folds, black work glove, warm skin tone and scale of his RIGHT ARM, which appears on the LEFT side of the reference.
Draw ONLY that complete connected bent arm, from rounded shoulder cap through blue upper sleeve, bent elbow, blue forearm sleeve, a tiny warm skin band at the wrist, and a black gloved OPEN hand with five natural fingers, palm toward camera. It must be ONE anatomically continuous arm painted as a single piece, no joints cut apart and no floating hand, no doubled wrist/cuff. Change the thumbs-up to a relaxed friendly open-palm wave.
Orientation critical: this is the arm on the LEFT side of a front-facing mascot. The shoulder cap is at the RIGHT-MIDDLE of the sprite. From shoulder, the blue upper arm runs diagonally DOWN-LEFT to the elbow near the BOTTOM-LEFT. The forearm bends back UP toward the open hand at the TOP-LEFT, fingers pointing up. Thumb is on viewer's RIGHT side of the palm. Compact bent-elbow greeting pose matching the original, not an outstretched arm. Blue sleeve must be full length nearly to glove with a small warm skin band.
Composition: isolate this SINGLE COMPLETE ARM on a genuinely transparent background with generous margins; no rest of body, no face, no torso, no text, no logo, no other object or arm. Shoulder termination is a rounded blue fabric cap designed to be hidden beneath the existing torso in the animation. Polished matching cel-shaded cartoon rendering, no black outline drawn across attachment cap. No cast shadow outside the sprite.
```
