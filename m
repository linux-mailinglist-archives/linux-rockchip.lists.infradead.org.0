Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E23912D6E2
	for <lists+linux-rockchip@lfdr.de>; Tue, 31 Dec 2019 08:54:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PWBw/1aGSqfv/vcB5IQK1r1PGW7RXn2Ia6IlZyvGrlI=; b=H4l/yC80XaMjM9
	B/ec2JCggoeLtN1mrH+3CyGEyUgC1uDqDHCvIlT0flNMlp8/Kcui4LYwUVOSXaT1Odo/Xlj/OiCOf
	UkIENuJSmDVXW2fdLSnE+TBsrJ7X0fdty7ieYgJuFUqlCT8KUupiTqLk66T9TTb66DuztVMa32D6w
	82w+bG2y4dOU7zoRxMi4357EeotkPAGwdlMb7a6qBchk5qn+cLIgoa84A1Sb3GUvX01Q0CcBO49re
	VKvQqn1UySGRSmUN1wWwjvcF5i90vwq2H7jwPAw6MS/Kc1jLKqnM+D1Iz5g0E8mxAqn3nQ3nJu4SV
	IqQ140WmDPCz1C2AniSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imCM7-0007x7-9J; Tue, 31 Dec 2019 07:54:19 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imCM4-0007wm-3F
 for linux-rockchip@lists.infradead.org; Tue, 31 Dec 2019 07:54:17 +0000
Received: by mail-io1-xd41.google.com with SMTP id v18so33413708iol.2
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2019 23:54:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3z7SrcDixycX6IHpTDhtA/xBfi3cFNizcexpZu70vpQ=;
 b=YxIGfhapfKtG1AXI3eBQDDPmn7G4oFo8k8Fcqda8D7pvRLLVMxgneZc23Ctmisv7mq
 IADMIvqLj9QXjvZ9NMgaPcNCyVIpul1OAXAG9/IeTS7b6AMo26M96E3HRT31CndUdLoP
 gxtuASyTge1JbyTU1GnUp11v9bG3c/8ZALZCOP9x+DWXC2CLO/Fzy70B6ktJZJgCD2nM
 8BAODqsHB+LUYD3DtwZpRLw49dEHEoAoNNOWd+UE7cx9wRqhn+pA6fXrhUqQeRaja4o5
 QZvmBDns6zctjUF6q0jVQkuA7IPzpmVyllrrZdeqjVbnSPp2astlQwiM4TZwJ6kl0pU/
 1UKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3z7SrcDixycX6IHpTDhtA/xBfi3cFNizcexpZu70vpQ=;
 b=eLsH2VHoteeZe5x1Zq6DqhQ4NLy9+7FA5VBaqv7P0ORgvOttEKF+nfA5MVC084W456
 NsVRopc4bywpxd8c0+tyvR3bUtEVdRm9QH7BTdm7m7DWG4WZsHFjbpIn9r/3IJiek3LD
 zbnWS1Xbs/BXpULrEDGB/4VECzgJyr4cBBR2SwU4e8h6OZhagBTJoxlBFmbUzwisagii
 tnfI85JgJ+HESbUAStPEYDU7yQcy6LfnuynIbhrssyl06Oy93ofRHPpmDCelTdxKGG6i
 OhjDjuVKwZHA5/oEid+m/kZsrWKqIYoNjjFSh3CGGhX9TWiHRFThzHFKCM+2vNu54vcz
 gTkg==
X-Gm-Message-State: APjAAAXX18n2wR2A23g7bCyStHuUjBwVJBSTBx7zwoowtbA2Xh2Yckts
 p7ZXpiGGxxFaVPoiB+4Y910RQ+IB2990zQJuEs0=
X-Google-Smtp-Source: APXvYqywpkYps4PvvvOSHPyYkbNmdyghIuLtW7mB6cvYm3bpCPV3De2UWqC2nSDQ0teBicJWgGqY+mawpsOWTnE2N/E=
X-Received: by 2002:a5e:9307:: with SMTP id k7mr45207888iom.305.1577778855048; 
 Mon, 30 Dec 2019 23:54:15 -0800 (PST)
MIME-Version: 1.0
References: <20191230082819.30191-1-jagan@amarulasolutions.com>
 <20191230082819.30191-7-jagan@amarulasolutions.com>
In-Reply-To: <20191230082819.30191-7-jagan@amarulasolutions.com>
From: "Matwey V. Kornilov" <matwey.kornilov@gmail.com>
Date: Tue, 31 Dec 2019 10:54:04 +0300
Message-ID: <CAJs94EZiDzMDZ=FS_G0e+O_5Q8iP15Rvp=oa3f4h659WQEaS8w@mail.gmail.com>
Subject: Re: [PATCH v5 6/7] rockchip: Add Single boot image (with binman,
 pad_cat)
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_235416_140621_83AB199B 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matwey.kornilov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: U-Boot Mailing List <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Akash Gajjar <akash@openedev.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

0L/QvSwgMzAg0LTQtdC6LiAyMDE5INCzLiDQsiAxMToyOCwgSmFnYW4gVGVraSA8amFnYW5AYW1h
cnVsYXNvbHV0aW9ucy5jb20+Ogo+Cj4gQWxsIHJvY2tjaGlwIHBsYXRmb3JtcyBzdXBwb3J0IFRQ
TCBvciBTUEwtYmFzZWQgYm9vdGxvYWRlcgo+IGluIG1haW5saW5lIHdpdGggVS1Cb290IHByb3Bl
ciBhcyBmaW5hbCBzdGFnZS4gRm9yIGVhY2gKPiBzdGFnZSB3ZSBuZWVkIHRvIGJ1cm4gdGhlIGlt
YWdlIG9uIHRvIGZsYXNoIHdpdGggcmVzcGVjdGl2ZQo+IG9mZnNldHMuCj4KPiBUaGlzIHBhdGNo
IGNyZWF0ZXMgYSBzaW5nbGUgYm9vdCBpbWFnZSBjb21wb25lbnQgdXNpbmcKPiAtIGJpbm1hbiwg
Zm9yIGFybTMyIHJvY2tjaGlwIHBsYXRmb3Jtcwo+IC0gcGFkX2NhdCwgZm9yIGFybTY0IHJvY2tj
aGlwIHBsYXRmb3Jtcy4KPgo+IFRoaXMgd291bGQgaGVscCB1c2VycyB0byBnZXQgcmlkIG9mIGJ1
cm5pbmcgZGlmZmVyZW50Cj4gYm9vdCBzdGFnZSBpbWFnZXMuCj4KPiBUaGUgbmV3IGltYWdlIGNh
bGxlZCAndS1ib290LXJvY2tjaGlwLmJpbicKPiB3aGljaCBjYW4gYnVybiBpbnRvIGZsYXNoIGxp
a2U6Cj4KPiDigrkgc3VkbyBkZCBpZj11LWJvb3Qtcm9ja2NoaXAuYmluIG9mPS9kZXYvc2RhIHNl
ZWs9NjQKPgo+IFRoaXMgd291bGQgc3VwcG9ydCBhbGwgcm9ja2NoaXAgcGxhdGZvcm1zLCBleGNl
cHQgcmszMTI4Cj4gc2luY2UgaXQgZG9lc24ndCBzdXBwb3J0IGZvciBTUEwgeWV0Lgo+Cj4gQ2M6
IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+Cj4gQ2M6IE1hdHdleSBWLiBL
b3JuaWxvdiA8bWF0d2V5Lmtvcm5pbG92QGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdh
biBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBSZXZpZXdlZC1ieTogS2V2ZXIg
WWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KPiAtLS0KPiAgTWFrZWZpbGUgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgMTggKysrKysrKysrKysrKystLS0tCj4gIGFyY2gvYXJtL0tj
b25maWcgICAgICAgICAgICAgICAgICB8ICAxICsKPiAgYXJjaC9hcm0vZHRzL3JrMzAzNi11LWJv
b3QuZHRzaSAgIHwgIDIgKysKPiAgYXJjaC9hcm0vZHRzL3JrMzI4OC11LWJvb3QuZHRzaSAgIHwg
IDIgKysKPiAgYXJjaC9hcm0vZHRzL3JvY2tjaGlwLXUtYm9vdC5kdHNpIHwgMjEgKysrKysrKysr
KysrKysrKysrKysrCj4gIGluY2x1ZGUvY29uZmlncy9yb2NrY2hpcC1jb21tb24uaCB8ICAyICsr
Cj4gIDYgZmlsZXMgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2R0cy9yb2NrY2hpcC11LWJvb3QuZHRzaQo+Cj4g
ZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFrZWZpbGUKPiBpbmRleCBiNDg2OTNlNTYwLi5kNWI2
YzQ1Yzg5IDEwMDY0NAo+IC0tLSBhL01ha2VmaWxlCj4gKysrIGIvTWFrZWZpbGUKPiBAQCAtOTA5
LDcgKzkwOSw3IEBAIEFMTC15ICs9IHUtYm9vdC13aXRoLWR0Yi5iaW4KPiAgZW5kaWYKPgo+ICBp
ZmVxICgkKENPTkZJR19BUkNIX1JPQ0tDSElQKSQoQ09ORklHX1NQTCkseXkpCj4gLUFMTC15ICs9
IHUtYm9vdC1zcGwtcm9ja2NoaXAuYmluCj4gK0FMTC15ICs9IHUtYm9vdC1yb2NrY2hpcC5iaW4K
PiAgZW5kaWYKPgo+ICBMREZMQUdTX3UtYm9vdCArPSAkKExERkxBR1NfRklOQUwpCj4gQEAgLTEz
ODcsMTUgKzEzODcsMjUgQEAgaWZlcSAoJChDT05GSUdfU1BMKSQoQ09ORklHX1RQTCkseXkpCj4g
IE1LSU1BR0VGTEFHU191LWJvb3QtdHBsLXJvY2tjaGlwLmJpbiA9IC1uICQoQ09ORklHX1NZU19T
T0MpIC1UICQoUk9DS0NISVBfSU1HX1RZUEUpCj4gIHRwbC91LWJvb3QtdHBsLXJvY2tjaGlwLmJp
bjogdHBsL3UtYm9vdC10cGwuYmluIEZPUkNFCj4gICAgICAgICAkKGNhbGwgaWZfY2hhbmdlZCxt
a2ltYWdlKQo+IC11LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbjogdHBsL3UtYm9vdC10cGwtcm9ja2No
aXAuYmluIHNwbC91LWJvb3Qtc3BsLmJpbiBGT1JDRQo+ICtzcGwvdS1ib290LXNwbC1yb2NrY2hp
cC5iaW46IHRwbC91LWJvb3QtdHBsLXJvY2tjaGlwLmJpbiBzcGwvdS1ib290LXNwbC5iaW4gRk9S
Q0UKPiAgICAgICAgICQoY2FsbCBpZl9jaGFuZ2VkLGNhdCkKPiAgZWxzZQo+ICBNS0lNQUdFRkxB
R1NfdS1ib290LXNwbC1yb2NrY2hpcC5iaW4gPSAtbiAkKENPTkZJR19TWVNfU09DKSAtVCAkKFJP
Q0tDSElQX0lNR19UWVBFKQo+IC11LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbjogc3BsL3UtYm9vdC1z
cGwuYmluIEZPUkNFCj4gK3NwbC91LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbjogc3BsL3UtYm9vdC1z
cGwuYmluIEZPUkNFCj4gICAgICAgICAkKGNhbGwgaWZfY2hhbmdlZCxta2ltYWdlKQo+ICBlbmRp
Zgo+Cj4gLWVuZGlmCj4gK2lmZXEgKCQoQ09ORklHX0FSTTY0KSwpCj4gK3UtYm9vdC1yb2NrY2hp
cC5iaW46IHNwbC91LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbiB1LWJvb3QuaW1nIEZPUkNFCj4gKyAg
ICAgICAkKGNhbGwgaWZfY2hhbmdlZCxiaW5tYW4pCj4gK2Vsc2UKPiArT0JKQ09QWUZMQUdTX3Ut
Ym9vdC1yb2NrY2hpcC5iaW4gPSAtSSBiaW5hcnkgLU8gYmluYXJ5IFwKPiArICAgICAgIC0tcGFk
LXRvPSQoQ09ORklHX1NQTF9QQURfVE8pIC0tZ2FwLWZpbGw9MHhmZgo+ICt1LWJvb3Qtcm9ja2No
aXAuYmluOiBzcGwvdS1ib290LXNwbC1yb2NrY2hpcC5iaW4gdS1ib290Lml0YiBGT1JDRQo+ICsg
ICAgICAgJChjYWxsIGlmX2NoYW5nZWQscGFkX2NhdCkKPiArZW5kaWYgIyBDT05GSUdfQVJNNjQK
PiArCj4gK2VuZGlmICMgQ09ORklHX0FSQ0hfUk9DS0NISVAKPgo+ICBpZmVxICgkKENPTkZJR19B
UkNIX0xQQzMyWFgpJChDT05GSUdfU1BMKSx5eSkKPiAgTUtJTUFHRUZMQUdTX2xwYzMyeHgtc3Bs
LmltZyA9IC1UIGxwYzMyeHhpbWFnZSAtYSAkKENPTkZJR19TUExfVEVYVF9CQVNFKQo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybS9LY29uZmlnIGIvYXJjaC9hcm0vS2NvbmZpZwo+IGluZGV4IGY5ZGFi
MDczZWEuLjdiZDk5YmEzYmIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vS2NvbmZpZwo+ICsrKyBi
L2FyY2gvYXJtL0tjb25maWcKPiBAQCAtMTU5MCw2ICsxNTkwLDcgQEAgY29uZmlnIEFSQ0hfU1RN
MzJNUAo+ICBjb25maWcgQVJDSF9ST0NLQ0hJUAo+ICAgICAgICAgYm9vbCAiU3VwcG9ydCBSb2Nr
Y2hpcCBTb0NzIgo+ICAgICAgICAgc2VsZWN0IEJMSwo+ICsgICAgICAgc2VsZWN0IEJJTk1BTiBp
ZiAhQVJNNjQKPiAgICAgICAgIHNlbGVjdCBETQo+ICAgICAgICAgc2VsZWN0IERNX0dQSU8KPiAg
ICAgICAgIHNlbGVjdCBETV9JMkMKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL3JrMzAzNi11
LWJvb3QuZHRzaSBiL2FyY2gvYXJtL2R0cy9yazMwMzYtdS1ib290LmR0c2kKPiBpbmRleCAxZTdk
MDc5MzE1Li40MWFjMDU0YjgxIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2R0cy9yazMwMzYtdS1i
b290LmR0c2kKPiArKysgYi9hcmNoL2FybS9kdHMvcmszMDM2LXUtYm9vdC5kdHNpCj4gQEAgLTIs
MyArMiw1IEBACj4gIC8qCj4gICAqIENvcHlyaWdodCAoQykgMjAxOSBKYWdhbiBUZWtpIDxqYWdh
bkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiAgICovCj4gKwo+ICsjaW5jbHVkZSAicm9ja2NoaXAt
dS1ib290LmR0c2kiCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9yazMyODgtdS1ib290LmR0
c2kgYi9hcmNoL2FybS9kdHMvcmszMjg4LXUtYm9vdC5kdHNpCj4gaW5kZXggM2YwMGEzYjZkMy4u
NmQzMTczNTM2MiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9kdHMvcmszMjg4LXUtYm9vdC5kdHNp
Cj4gKysrIGIvYXJjaC9hcm0vZHRzL3JrMzI4OC11LWJvb3QuZHRzaQo+IEBAIC0zLDYgKzMsOCBA
QAo+ICAgKiBDb3B5cmlnaHQgKEMpIDIwMTkgUm9ja2NoaXAgRWxlY3Ryb25pY3MgQ28uLCBMdGQK
PiAgICovCj4KPiArI2luY2x1ZGUgInJvY2tjaGlwLXUtYm9vdC5kdHNpIgo+ICsKPiAgLyB7Cj4g
ICAgICAgICBjaG9zZW4gewo+ICAgICAgICAgICAgICAgICB1LWJvb3Qsc3BsLWJvb3Qtb3JkZXIg
PSBcCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9yb2NrY2hpcC11LWJvb3QuZHRzaSBiL2Fy
Y2gvYXJtL2R0cy9yb2NrY2hpcC11LWJvb3QuZHRzaQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4g
aW5kZXggMDAwMDAwMDAwMC4uYmMwYjE0MTJhMgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9hcmNo
L2FybS9kdHMvcm9ja2NoaXAtdS1ib290LmR0c2kKPiBAQCAtMCwwICsxLDIxIEBACj4gKy8vIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKwo+ICsvKgo+ICsgKiBDb3B5cmlnaHQgKEMp
IDIwMTkgSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gKyAqLwo+ICsK
PiArI2luY2x1ZGUgPGNvbmZpZy5oPgo+ICsKPiArLyB7Cj4gKyAgICAgICBiaW5tYW4gewo+ICsg
ICAgICAgICAgICAgICBmaWxlbmFtZSA9ICJ1LWJvb3Qtcm9ja2NoaXAuYmluIjsKPiArICAgICAg
ICAgICAgICAgcGFkLWJ5dGUgPSA8MHhmZj47Cj4gKwo+ICsgICAgICAgICAgICAgICBibG9iIHsK
PiArICAgICAgICAgICAgICAgICAgICAgICBmaWxlbmFtZSA9ICJzcGwvdS1ib290LXNwbC1yb2Nr
Y2hpcC5iaW4iOwo+ICsgICAgICAgICAgICAgICB9Owo+ICsKPiArICAgICAgICAgICAgICAgdS1i
b290LWltZyB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgb2Zmc2V0ID0gPENPTkZJR19TUExf
UEFEX1RPPjsKPiArICAgICAgICAgICAgICAgfTsKPiArICAgICAgIH07Cj4gK307Cj4gZGlmZiAt
LWdpdCBhL2luY2x1ZGUvY29uZmlncy9yb2NrY2hpcC1jb21tb24uaCBiL2luY2x1ZGUvY29uZmln
cy9yb2NrY2hpcC1jb21tb24uaAo+IGluZGV4IDY4ZTExMDVhNGIuLmQ3ZjVjYTlmYTQgMTAwNjQ0
Cj4gLS0tIGEvaW5jbHVkZS9jb25maWdzL3JvY2tjaGlwLWNvbW1vbi5oCj4gKysrIGIvaW5jbHVk
ZS9jb25maWdzL3JvY2tjaGlwLWNvbW1vbi5oCj4gQEAgLTksNiArOSw4IEBACj4KPiAgI2RlZmlu
ZSBDT05GSUdfU1lTX05TMTY1NTBfTUVNMzIKPgo+ICsjZGVmaW5lIENPTkZJR19TUExfUEFEX1RP
ICAgICAgICAgICAgICA4MzU1ODQwCgpJIG1heSBiZSB3cm9uZywgYnV0IHNob3VsZG4ndCBDT05G
SUdfU1lTX01NQ1NEX1JBV19NT0RFX1VfQk9PVF9TRUNUT1IKYmUgdXNlZCBoZXJlPwoKPiArCj4g
ICNpZm5kZWYgQ09ORklHX1NQTF9CVUlMRAo+Cj4gIC8qIEZpcnN0IHRyeSB0byBib290IGZyb20g
U0QgKGluZGV4IDApLCB0aGVuIGVNTUMgKGluZGV4IDEpICovCj4gLS0KPiAyLjE4LjAuMzIxLmdm
ZmM2ZmEwZTMKPgoKCi0tIApXaXRoIGJlc3QgcmVnYXJkcywKTWF0d2V5IFYuIEtvcm5pbG92Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
