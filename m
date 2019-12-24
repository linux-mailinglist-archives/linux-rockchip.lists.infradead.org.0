Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BFC12A09D
	for <lists+linux-rockchip@lfdr.de>; Tue, 24 Dec 2019 12:36:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xU10az3mxcM0v8t3XTvk3+TweVVlNmufPzc09O451FU=; b=RNdjhspn6WeVW/
	gbu+/EU2ZI5xM9ipFyG84z2merJzPLu2FsVWr8hqf0FEBi62+zhh0Q2dsjpeTbBHJbilmmxNiWkPA
	/vvHDiObbqpNwQ0eIrlzkpEaXIOvDrLlRsHwqCkCQljqk14nUrtyHIQkK4PDhOv9BdkBqTsDyuS5u
	LX6QZOscMJtm9mcLK5Ee3o3ITZzsqWOi2ZB+Dc36InDsfSOpcgVNCBp2/PbubHKhgdEX0I5OZ4/sm
	69LxIFK+gh4YQuVzVzXltJF6uinoQ7b/vy9M51m96NTfodAlPYGfhWw/IC9socQBXH8BDyngnRtv7
	0pT4NObkofMBUx6LN15g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijiU3-0004nO-6L; Tue, 24 Dec 2019 11:36:15 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijiTy-0004mF-LR; Tue, 24 Dec 2019 11:36:12 +0000
Received: from [199.195.250.187] (port=52781 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <icenowy@aosc.io>)
 id 1ijiTp-0004XE-5O; Tue, 24 Dec 2019 11:36:05 +0000
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 198A945CC4;
 Tue, 24 Dec 2019 11:35:39 +0000 (UTC)
Date: Tue, 24 Dec 2019 19:35:36 +0800
In-Reply-To: <CAFBinCCDmCHQW+nBHzsodz0R=GKoqv1EEzB=UY=ypFs4Q6MFmQ@mail.gmail.com>
References: <20191215211223.1451499-1-martin.blumenstingl@googlemail.com>
 <20191216154803.GA3921@kevin>
 <CAFBinCCDmCHQW+nBHzsodz0R=GKoqv1EEzB=UY=ypFs4Q6MFmQ@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Lima] [RFC v1 0/1] drm: lima: devfreq and cooling device support
To: lima@lists.freedesktop.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
From: Icenowy Zheng <icenowy@aosc.io>
Message-ID: <54FE8BA3-BB70-4411-9FD9-4AE460097A95@aosc.io>
X-BlackCat-Spam-Score: 14
X-Spam-Status: No, score=1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_033610_702170_0EC29145 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:82:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: robh@kernel.org, tomeu.vizoso@collabora.com, airlied@linux.ie,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 steven.price@arm.com, linux-rockchip@lists.infradead.org, wens@csie.org,
 yuq825@gmail.com, daniel@ffwll.ch, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Cgrkuo4gMjAxOeW5tDEy5pyIMjTml6UgR01UKzA4OjAwIOS4i+WNiDc6Mjg6NDEsIE1hcnRpbiBC
bHVtZW5zdGluZ2wgPG1hcnRpbi5ibHVtZW5zdGluZ2xAZ29vZ2xlbWFpbC5jb20+IOWGmeWIsDoK
PkhpIEFseXNzYSwKPgo+T24gTW9uLCBEZWMgMTYsIDIwMTkgYXQgNDo0OCBQTSBBbHlzc2EgUm9z
ZW56d2VpZwo+PGFseXNzYS5yb3Nlbnp3ZWlnQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Pgo+PiBJ
ZiBzbyBtdWNoIGNvZGUgaXMgYmVpbmcgZHVwbGljYXRlZCBvdmVyLCBJJ20gd29uZGVyaW5nIGlm
IGl0IG1ha2VzCj4+IHNlbnNlIGZvciB1cyB0byBtb3ZlIHNvbWUgb2YgdGhlIGNvbW1vbiBkZXZm
cmVxIGNvZGUgdG8gY29yZSBEUk0KPj4gaGVscGVycz8KPmlmIHlvdSBoYXZlIGFueSByZWNvbW1l
bmRhdGlvbiB3aGVyZSB0byBwdXQgaXQgdGhlbiBwbGVhc2UgbGV0IG1lIGtub3cKPihJIGFtIG5v
dCBmYW1pbGlhciB3aXRoIHRoZSBEUk0gc3Vic3lzdGVtIGF0IGFsbCkKPgo+bXkgaW5pdGlhbCBp
ZGVhIHdhcyB0aGF0IHRoZSBkZXZmcmVxIGxvZ2ljIG5lZWRzIHRoZSBzYW1lIGluZm9ybWF0aW9u
Cj50aGF0IHRoZSBzY2hlZHVsZXIgbmVlZHMgKHdoZXRoZXIgd2UncmUgc3VibWl0dGluZyBzb21l
dGhpbmcgdG8gYmUKPmV4ZWN1dGVkLCB0aGVyZSB3YXMgYSB0aW1lb3V0LCAuLi4pLgo+aG93ZXZl
ciwgbG9va2luZyBhdCBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyLyB0aGlzIHNlZW1zIHByZXR0
eQo+c3RhbmQtYWxvbmUgc28gSSdtIG5vdCBzdXJlIGl0IHNob3VsZCBnbyB0aGVyZQo+YWxzbyB0
aGUgTWFsaS00eDAgR1BVcyBoYXZlIHNvbWUgIlBNVSIgd2hpY2ggKm1heSogYmUgdXNlZCBpbnN0
ZWFkIG9mCgpJdCdzIG9wdGlvbmFsLiBXZSBjYW5ub3QgcHJvbWlzZSBpdHMgZXhpc3RhbmNlIG9u
IGEgZ2l2ZW4KaGFyZHdhcmUsIGFuZCBJIGhlYXJkIHRoYXQgYXQgbGVhc3Qgb24gQWxsd2lubmVy
IEg1IE1hbGkgUE1VCmlzIGJyb2tlbi4KCj5wb2xsaW5nIHRoZSBzdGF0aXN0aWNzIGludGVybmFs
bHkKPnNvIHRoaXMgaXMgd2hlcmUgSSByZWFsaXplIHRoYXQgd2l0aCBteSBjdXJyZW50IGtub3ds
ZWRnZSBJIGRvbid0IGtub3cKPmVub3VnaCBhYm91dCBsaW1hLCBwYW5mcm9zdCwgRFJNIG9yIHRo
ZSBkZXZmcmVxIHN1YnN5c3RlbSB0byBnZXQgYQo+Z29vZCBpZGVhIHdoZXJlIHRvIHB1dCB0aGUg
Y29kZS4KPgo+Cj5NYXJ0aW4KPl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj5saW1hIG1haWxpbmcgbGlzdAo+bGltYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
Pmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vbGltYQoKLS0g
CuS9v+eUqCBLLTkgTWFpbCDlj5HpgIHoh6rmiJHnmoRBbmRyb2lk6K6+5aSH44CCCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
