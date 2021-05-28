const autoRefresh = () => {
  const student = document.getElementById('student-refresh');
  if (student) {
    window.setTimeout(function () {
      window.location.reload();
    }, 10000);
  }
}

export { autoRefresh }
