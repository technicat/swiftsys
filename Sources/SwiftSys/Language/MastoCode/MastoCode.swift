//
//  Created by Philip Chu on 4/4/23.
//

// language codes supported by Mastodon (app/helpers/languages_helpers.rb)
// ISO639.1 minus Guarani (gn) and Samoan (sm)
// plus some ISO639.3 codes
public enum MastoCode: String, CaseIterable, Codable {

  // swiftlint:disable identifier_name
  case aa, ab, ae, af, ak, am, an, ar, `as`, av, ay, az,
    ba, be, bg, bi, bm, bn, bo, br, bs,
    ca, ce, ch, co, cr, cs, cu, cv, cy,
    da, de, dv, dz,
    ee, el, en, eo, es, et, eu,
    fa, fi, ff, fj, fo, fr, fy,
    ga, gd, gl, gu, gv,
    ha, he, hi, ho, hr, hu, ht, hy, hz,
    ia, id, ie, ig, ii, ik, io, `is`, it, iu,
    ja, jv,
    ka, kg, ki, kj, kk, kl, km, kn, ko, kr, ks, ku, kv, kw, ky,
    la, lb, lg, li, ln, lo, lt, lu, lv,
    mg, mh, mi, mk, ml, mn, mr, ms, mt, my,
    na, nb, nd, ne, ng, nl, nn, no, nr, nv, ny,
    oc, oj, om, or, os,
    pa, pi, pl, ps, pt,
    qu,
    rm, rn, ro, ru, rw,
    sa, sc, sd, se, sg, si, sk, sl, sn, so, sq, sr, ss, st, su, sv, sw,
    ta, te, tg, th, ti, tl, tk, tn, to, tr, ts, tt, tw, ty,
    ug, uk, ur, uz,
    ve, vi, vo,
    wa, wo,
    xh,
    yi, yo,
    za, zh, zu,
    ast,
    ckb, cnr,
    jbo,
    kab, kmr,
    ldn, lfn,
    sco, sma, smj, szl,
    tai, tok,
    zba, zgh

  // swiftlint:enable identifier_name
}
