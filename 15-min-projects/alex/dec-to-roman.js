




function zip(array1, array2) {
  return array1.reduce((accumulator, curr, index) => {
    return [...accumulator, [curr, array2[index]]];
  }, []);
}
