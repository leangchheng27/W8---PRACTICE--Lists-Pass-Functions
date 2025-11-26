import 'package:flutter/material.dart';

import '../model/profile_tile_model.dart';

ProfileData ronanProfile = ProfileData(
  name: "Phorn Leangchheng",
  position: "Flutter Developer",
  avatarUrl: 'assets/w3/pf.jpg',
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+855 70677988"),
    TileData(icon: Icons.location_on, title: "Address", value: "Bakheng ZIN"),
    TileData(icon: Icons.email, title: "Mail", value: "leangchheng.phorn@student.cadt.edu.kh"),
    TileData(icon: Icons.music_note, title: "Tiktok", value: "urrrfutureeebf"),
    TileData(icon: Icons.book, title: "Instagram", value: "leang.chhenggg")
  ],
);
