Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AAF12D6EA
	for <lists+linux-rockchip@lfdr.de>; Tue, 31 Dec 2019 09:04:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5PXsO8gMvs1n7E/2CMKa7HL0nCxxHAuExWFZ5iP5zN0=; b=VdsYFyloNClgfq
	A1zjQTVVJILmQSFH7yFwBSktQBh+2rUiuyjckjtaEh7krU2fwA5KZ4QujM4MdFD5r7DVnKhFavhkw
	qP5FNtphe6de/Gs/w0OP50h58ROvMgwuo7hPl2ozjgNCddyUXWghQm5YXh435kx32I3Z30x/r17eK
	D+6SItdKCF0Jv7mAE6G+4pNd62HhThDfpgEqXC60eC9LDDKL1yd7mWhqm5BNmLauZ97C6jY/Hgwql
	o6c/A4+M0huRmev1Ac5ju4RbfoWOl2qfb26Fvl4kgfrG28Cz8St12Iu87gxxMpmMTXlCfZ8R0dwh5
	MusXI86VgjfyR9OCYtTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imCVs-0002wf-HU; Tue, 31 Dec 2019 08:04:24 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imCVo-0002wJ-Pp
 for linux-rockchip@lists.infradead.org; Tue, 31 Dec 2019 08:04:22 +0000
Received: by mail-io1-xd43.google.com with SMTP id i11so33373991ioi.12
 for <linux-rockchip@lists.infradead.org>; Tue, 31 Dec 2019 00:04:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=tpBfIxAy+ROd099VAzSsSaM28jycx1hR1DPMpS9fHqU=;
 b=fSFX8HVOG/mpvGSSclG4xE55V2dJ3tVioFlumyYRfNrruz5pwUbbYOaIoIqEvxLA5K
 iUQBI0rvfJH6gm+DCV4MdBJjxDodiI5BGUFVqdNC1089d8RkZr90g//vPdj5YRtsMLTF
 2o5px4B77G86Ht+cCfH6+iRyA0CJgpc8QDZX/qRuzx/JC8DukR0BsgehXNqtMTUjTMXl
 kN4oAnsl4MbUJjr3u0mCSBEvQPNvK4urd7PGD32RCsIzZqiewV2QKioz23w0d9N5TUPd
 DxZaAx9a1Y2nTaHNBwTCuc5CzrC8wg+7EKi1mNZrrXUfRbgGJVLaD2p28ZlP9BXTvcfQ
 iMnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tpBfIxAy+ROd099VAzSsSaM28jycx1hR1DPMpS9fHqU=;
 b=cqmiyeZlgMMEpaJyfMhoFI2Wb1/bW6OtdzRbeWDhEXMXPqxdqPSqG/Hc4dIOhb/Y2h
 yu4iC3yxedC6oII1eeyTVifwLE45dw+ar8mOzaNN3Pq0c0dtaxgrybDJA4eYX9Piy6BE
 7K7kRjIJnBv1oyB8qaRVyTlblhpgCIzUbdcMfq4tGnUpQ90KJ2bb4Xil9hor3jSHD6w3
 vggmcr28+jGfY4ODp6ioKpZz9eDa6XM/CYW40D8OCEP3lbvlsDcqUdcCtUYTz6TCv188
 xs4GOcmyaorNBbih+Fh5KD9CiLV5okPBQENoFtDaxqhirjf8iagamobh+Ira0hujyRnK
 kXcQ==
X-Gm-Message-State: APjAAAVxXBJnP1BZs8aFLkNq+ibLIfV0UaQfwtOErzrUz7mfz+KjZyCn
 ZPOeROG1t3ISsIob3iT/B0FpXldvznBvMFWI5zQ=
X-Google-Smtp-Source: APXvYqytPPb3B0vvxPWuPYzoMDMWTtEGh2NEIX2Jh4MThOMbjoGyxunEYc91S9J5n2osFogFzUdp1CB5qyhoeuOW+VI=
X-Received: by 2002:a5d:840a:: with SMTP id i10mr6536966ion.225.1577779459057; 
 Tue, 31 Dec 2019 00:04:19 -0800 (PST)
MIME-Version: 1.0
References: <20191230082819.30191-1-jagan@amarulasolutions.com>
 <20191230082819.30191-7-jagan@amarulasolutions.com>
 <CAJs94EZiDzMDZ=FS_G0e+O_5Q8iP15Rvp=oa3f4h659WQEaS8w@mail.gmail.com>
In-Reply-To: <CAJs94EZiDzMDZ=FS_G0e+O_5Q8iP15Rvp=oa3f4h659WQEaS8w@mail.gmail.com>
From: "Matwey V. Kornilov" <matwey.kornilov@gmail.com>
Date: Tue, 31 Dec 2019 11:04:08 +0300
Message-ID: <CAJs94EZgpHmkHAfDQUH_mqW82Jw_QJWiJgx_8Uny1ru1WfbrHw@mail.gmail.com>
Subject: Re: [PATCH v5 6/7] rockchip: Add Single boot image (with binman,
 pad_cat)
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_000420_865698_C38BC5F0 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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

0LLRgiwgMzEg0LTQtdC6LiAyMDE5INCzLiDQsiAxMDo1NCwgTWF0d2V5IFYuIEtvcm5pbG92IDxt
YXR3ZXkua29ybmlsb3ZAZ21haWwuY29tPjoKPgo+INC/0L0sIDMwINC00LXQui4gMjAxOSDQsy4g
0LIgMTE6MjgsIEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPjoKPiA+Cj4g
PiBBbGwgcm9ja2NoaXAgcGxhdGZvcm1zIHN1cHBvcnQgVFBMIG9yIFNQTC1iYXNlZCBib290bG9h
ZGVyCj4gPiBpbiBtYWlubGluZSB3aXRoIFUtQm9vdCBwcm9wZXIgYXMgZmluYWwgc3RhZ2UuIEZv
ciBlYWNoCj4gPiBzdGFnZSB3ZSBuZWVkIHRvIGJ1cm4gdGhlIGltYWdlIG9uIHRvIGZsYXNoIHdp
dGggcmVzcGVjdGl2ZQo+ID4gb2Zmc2V0cy4KPiA+Cj4gPiBUaGlzIHBhdGNoIGNyZWF0ZXMgYSBz
aW5nbGUgYm9vdCBpbWFnZSBjb21wb25lbnQgdXNpbmcKPiA+IC0gYmlubWFuLCBmb3IgYXJtMzIg
cm9ja2NoaXAgcGxhdGZvcm1zCj4gPiAtIHBhZF9jYXQsIGZvciBhcm02NCByb2NrY2hpcCBwbGF0
Zm9ybXMuCj4gPgo+ID4gVGhpcyB3b3VsZCBoZWxwIHVzZXJzIHRvIGdldCByaWQgb2YgYnVybmlu
ZyBkaWZmZXJlbnQKPiA+IGJvb3Qgc3RhZ2UgaW1hZ2VzLgo+ID4KPiA+IFRoZSBuZXcgaW1hZ2Ug
Y2FsbGVkICd1LWJvb3Qtcm9ja2NoaXAuYmluJwo+ID4gd2hpY2ggY2FuIGJ1cm4gaW50byBmbGFz
aCBsaWtlOgo+ID4KPiA+IOKCuSBzdWRvIGRkIGlmPXUtYm9vdC1yb2NrY2hpcC5iaW4gb2Y9L2Rl
di9zZGEgc2Vlaz02NAo+ID4KPiA+IFRoaXMgd291bGQgc3VwcG9ydCBhbGwgcm9ja2NoaXAgcGxh
dGZvcm1zLCBleGNlcHQgcmszMTI4Cj4gPiBzaW5jZSBpdCBkb2Vzbid0IHN1cHBvcnQgZm9yIFNQ
TCB5ZXQuCj4gPgo+ID4gQ2M6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+
Cj4gPiBDYzogTWF0d2V5IFYuIEtvcm5pbG92IDxtYXR3ZXkua29ybmlsb3ZAZ21haWwuY29tPgo+
ID4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+
Cj4gPiBSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4K
PiA+IC0tLQo+ID4gIE1ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICB8IDE4ICsrKysr
KysrKysrKysrLS0tLQo+ID4gIGFyY2gvYXJtL0tjb25maWcgICAgICAgICAgICAgICAgICB8ICAx
ICsKPiA+ICBhcmNoL2FybS9kdHMvcmszMDM2LXUtYm9vdC5kdHNpICAgfCAgMiArKwo+ID4gIGFy
Y2gvYXJtL2R0cy9yazMyODgtdS1ib290LmR0c2kgICB8ICAyICsrCj4gPiAgYXJjaC9hcm0vZHRz
L3JvY2tjaGlwLXUtYm9vdC5kdHNpIHwgMjEgKysrKysrKysrKysrKysrKysrKysrCj4gPiAgaW5j
bHVkZS9jb25maWdzL3JvY2tjaGlwLWNvbW1vbi5oIHwgIDIgKysKPiA+ICA2IGZpbGVzIGNoYW5n
ZWQsIDQyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGFyY2gvYXJtL2R0cy9yb2NrY2hpcC11LWJvb3QuZHRzaQo+ID4KPiA+IGRpZmYgLS1naXQg
YS9NYWtlZmlsZSBiL01ha2VmaWxlCj4gPiBpbmRleCBiNDg2OTNlNTYwLi5kNWI2YzQ1Yzg5IDEw
MDY0NAo+ID4gLS0tIGEvTWFrZWZpbGUKPiA+ICsrKyBiL01ha2VmaWxlCj4gPiBAQCAtOTA5LDcg
KzkwOSw3IEBAIEFMTC15ICs9IHUtYm9vdC13aXRoLWR0Yi5iaW4KPiA+ICBlbmRpZgo+ID4KPiA+
ICBpZmVxICgkKENPTkZJR19BUkNIX1JPQ0tDSElQKSQoQ09ORklHX1NQTCkseXkpCj4gPiAtQUxM
LXkgKz0gdS1ib290LXNwbC1yb2NrY2hpcC5iaW4KPiA+ICtBTEwteSArPSB1LWJvb3Qtcm9ja2No
aXAuYmluCj4gPiAgZW5kaWYKPiA+Cj4gPiAgTERGTEFHU191LWJvb3QgKz0gJChMREZMQUdTX0ZJ
TkFMKQo+ID4gQEAgLTEzODcsMTUgKzEzODcsMjUgQEAgaWZlcSAoJChDT05GSUdfU1BMKSQoQ09O
RklHX1RQTCkseXkpCj4gPiAgTUtJTUFHRUZMQUdTX3UtYm9vdC10cGwtcm9ja2NoaXAuYmluID0g
LW4gJChDT05GSUdfU1lTX1NPQykgLVQgJChST0NLQ0hJUF9JTUdfVFlQRSkKPiA+ICB0cGwvdS1i
b290LXRwbC1yb2NrY2hpcC5iaW46IHRwbC91LWJvb3QtdHBsLmJpbiBGT1JDRQo+ID4gICAgICAg
ICAkKGNhbGwgaWZfY2hhbmdlZCxta2ltYWdlKQo+ID4gLXUtYm9vdC1zcGwtcm9ja2NoaXAuYmlu
OiB0cGwvdS1ib290LXRwbC1yb2NrY2hpcC5iaW4gc3BsL3UtYm9vdC1zcGwuYmluIEZPUkNFCj4g
PiArc3BsL3UtYm9vdC1zcGwtcm9ja2NoaXAuYmluOiB0cGwvdS1ib290LXRwbC1yb2NrY2hpcC5i
aW4gc3BsL3UtYm9vdC1zcGwuYmluIEZPUkNFCj4gPiAgICAgICAgICQoY2FsbCBpZl9jaGFuZ2Vk
LGNhdCkKPiA+ICBlbHNlCj4gPiAgTUtJTUFHRUZMQUdTX3UtYm9vdC1zcGwtcm9ja2NoaXAuYmlu
ID0gLW4gJChDT05GSUdfU1lTX1NPQykgLVQgJChST0NLQ0hJUF9JTUdfVFlQRSkKPiA+IC11LWJv
b3Qtc3BsLXJvY2tjaGlwLmJpbjogc3BsL3UtYm9vdC1zcGwuYmluIEZPUkNFCj4gPiArc3BsL3Ut
Ym9vdC1zcGwtcm9ja2NoaXAuYmluOiBzcGwvdS1ib290LXNwbC5iaW4gRk9SQ0UKPiA+ICAgICAg
ICAgJChjYWxsIGlmX2NoYW5nZWQsbWtpbWFnZSkKPiA+ICBlbmRpZgo+ID4KPiA+IC1lbmRpZgo+
ID4gK2lmZXEgKCQoQ09ORklHX0FSTTY0KSwpCj4gPiArdS1ib290LXJvY2tjaGlwLmJpbjogc3Bs
L3UtYm9vdC1zcGwtcm9ja2NoaXAuYmluIHUtYm9vdC5pbWcgRk9SQ0UKPiA+ICsgICAgICAgJChj
YWxsIGlmX2NoYW5nZWQsYmlubWFuKQo+ID4gK2Vsc2UKPiA+ICtPQkpDT1BZRkxBR1NfdS1ib290
LXJvY2tjaGlwLmJpbiA9IC1JIGJpbmFyeSAtTyBiaW5hcnkgXAo+ID4gKyAgICAgICAtLXBhZC10
bz0kKENPTkZJR19TUExfUEFEX1RPKSAtLWdhcC1maWxsPTB4ZmYKPiA+ICt1LWJvb3Qtcm9ja2No
aXAuYmluOiBzcGwvdS1ib290LXNwbC1yb2NrY2hpcC5iaW4gdS1ib290Lml0YiBGT1JDRQo+ID4g
KyAgICAgICAkKGNhbGwgaWZfY2hhbmdlZCxwYWRfY2F0KQo+ID4gK2VuZGlmICMgQ09ORklHX0FS
TTY0Cj4gPiArCj4gPiArZW5kaWYgIyBDT05GSUdfQVJDSF9ST0NLQ0hJUAo+ID4KPiA+ICBpZmVx
ICgkKENPTkZJR19BUkNIX0xQQzMyWFgpJChDT05GSUdfU1BMKSx5eSkKPiA+ICBNS0lNQUdFRkxB
R1NfbHBjMzJ4eC1zcGwuaW1nID0gLVQgbHBjMzJ4eGltYWdlIC1hICQoQ09ORklHX1NQTF9URVhU
X0JBU0UpCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vS2NvbmZpZyBiL2FyY2gvYXJtL0tjb25m
aWcKPiA+IGluZGV4IGY5ZGFiMDczZWEuLjdiZDk5YmEzYmIgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNo
L2FybS9LY29uZmlnCj4gPiArKysgYi9hcmNoL2FybS9LY29uZmlnCj4gPiBAQCAtMTU5MCw2ICsx
NTkwLDcgQEAgY29uZmlnIEFSQ0hfU1RNMzJNUAo+ID4gIGNvbmZpZyBBUkNIX1JPQ0tDSElQCj4g
PiAgICAgICAgIGJvb2wgIlN1cHBvcnQgUm9ja2NoaXAgU29DcyIKPiA+ICAgICAgICAgc2VsZWN0
IEJMSwo+ID4gKyAgICAgICBzZWxlY3QgQklOTUFOIGlmICFBUk02NAo+ID4gICAgICAgICBzZWxl
Y3QgRE0KPiA+ICAgICAgICAgc2VsZWN0IERNX0dQSU8KPiA+ICAgICAgICAgc2VsZWN0IERNX0ky
Qwo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9yazMwMzYtdS1ib290LmR0c2kgYi9hcmNo
L2FybS9kdHMvcmszMDM2LXUtYm9vdC5kdHNpCj4gPiBpbmRleCAxZTdkMDc5MzE1Li40MWFjMDU0
YjgxIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm0vZHRzL3JrMzAzNi11LWJvb3QuZHRzaQo+ID4g
KysrIGIvYXJjaC9hcm0vZHRzL3JrMzAzNi11LWJvb3QuZHRzaQo+ID4gQEAgLTIsMyArMiw1IEBA
Cj4gPiAgLyoKPiA+ICAgKiBDb3B5cmlnaHQgKEMpIDIwMTkgSmFnYW4gVGVraSA8amFnYW5AYW1h
cnVsYXNvbHV0aW9ucy5jb20+Cj4gPiAgICovCj4gPiArCj4gPiArI2luY2x1ZGUgInJvY2tjaGlw
LXUtYm9vdC5kdHNpIgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9yazMyODgtdS1ib290
LmR0c2kgYi9hcmNoL2FybS9kdHMvcmszMjg4LXUtYm9vdC5kdHNpCj4gPiBpbmRleCAzZjAwYTNi
NmQzLi42ZDMxNzM1MzYyIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm0vZHRzL3JrMzI4OC11LWJv
b3QuZHRzaQo+ID4gKysrIGIvYXJjaC9hcm0vZHRzL3JrMzI4OC11LWJvb3QuZHRzaQo+ID4gQEAg
LTMsNiArMyw4IEBACj4gPiAgICogQ29weXJpZ2h0IChDKSAyMDE5IFJvY2tjaGlwIEVsZWN0cm9u
aWNzIENvLiwgTHRkCj4gPiAgICovCj4gPgo+ID4gKyNpbmNsdWRlICJyb2NrY2hpcC11LWJvb3Qu
ZHRzaSIKPiA+ICsKPiA+ICAvIHsKPiA+ICAgICAgICAgY2hvc2VuIHsKPiA+ICAgICAgICAgICAg
ICAgICB1LWJvb3Qsc3BsLWJvb3Qtb3JkZXIgPSBcCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0v
ZHRzL3JvY2tjaGlwLXUtYm9vdC5kdHNpIGIvYXJjaC9hcm0vZHRzL3JvY2tjaGlwLXUtYm9vdC5k
dHNpCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMC4uYmMwYjE0
MTJhMgo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvYXJjaC9hcm0vZHRzL3JvY2tjaGlwLXUt
Ym9vdC5kdHNpCj4gPiBAQCAtMCwwICsxLDIxIEBACj4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjArCj4gPiArLyoKPiA+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTkgSmFnYW4g
VGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gPiArICovCj4gPiArCj4gPiArI2lu
Y2x1ZGUgPGNvbmZpZy5oPgo+ID4gKwo+ID4gKy8gewo+ID4gKyAgICAgICBiaW5tYW4gewo+ID4g
KyAgICAgICAgICAgICAgIGZpbGVuYW1lID0gInUtYm9vdC1yb2NrY2hpcC5iaW4iOwo+ID4gKyAg
ICAgICAgICAgICAgIHBhZC1ieXRlID0gPDB4ZmY+Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICAg
IGJsb2Igewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZmlsZW5hbWUgPSAic3BsL3UtYm9v
dC1zcGwtcm9ja2NoaXAuYmluIjsKPiA+ICsgICAgICAgICAgICAgICB9Owo+ID4gKwo+ID4gKyAg
ICAgICAgICAgICAgIHUtYm9vdC1pbWcgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgb2Zm
c2V0ID0gPENPTkZJR19TUExfUEFEX1RPPjsKPiA+ICsgICAgICAgICAgICAgICB9Owo+ID4gKyAg
ICAgICB9Owo+ID4gK307Cj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9jb25maWdzL3JvY2tjaGlw
LWNvbW1vbi5oIGIvaW5jbHVkZS9jb25maWdzL3JvY2tjaGlwLWNvbW1vbi5oCj4gPiBpbmRleCA2
OGUxMTA1YTRiLi5kN2Y1Y2E5ZmE0IDEwMDY0NAo+ID4gLS0tIGEvaW5jbHVkZS9jb25maWdzL3Jv
Y2tjaGlwLWNvbW1vbi5oCj4gPiArKysgYi9pbmNsdWRlL2NvbmZpZ3Mvcm9ja2NoaXAtY29tbW9u
LmgKPiA+IEBAIC05LDYgKzksOCBAQAo+ID4KPiA+ICAjZGVmaW5lIENPTkZJR19TWVNfTlMxNjU1
MF9NRU0zMgo+ID4KPiA+ICsjZGVmaW5lIENPTkZJR19TUExfUEFEX1RPICAgICAgICAgICAgICA4
MzU1ODQwCj4KPiBJIG1heSBiZSB3cm9uZywgYnV0IHNob3VsZG4ndCBDT05GSUdfU1lTX01NQ1NE
X1JBV19NT0RFX1VfQk9PVF9TRUNUT1IKPiBiZSB1c2VkIGhlcmU/CgpJLmUuCgojZGVmaW5lIENP
TkZJR19TUExfUEFEX1RPICgoQ09ORklHX1NZU19NTUNTRF9SQVdfTU9ERV9VX0JPT1RfU0VDVE9S
IC0gNjQpICogNTEyKQoKPgo+ID4gKwo+ID4gICNpZm5kZWYgQ09ORklHX1NQTF9CVUlMRAo+ID4K
PiA+ICAvKiBGaXJzdCB0cnkgdG8gYm9vdCBmcm9tIFNEIChpbmRleCAwKSwgdGhlbiBlTU1DIChp
bmRleCAxKSAqLwo+ID4gLS0KPiA+IDIuMTguMC4zMjEuZ2ZmYzZmYTBlMwo+ID4KPgo+Cj4gLS0K
PiBXaXRoIGJlc3QgcmVnYXJkcywKPiBNYXR3ZXkgVi4gS29ybmlsb3YKCgoKLS0gCldpdGggYmVz
dCByZWdhcmRzLApNYXR3ZXkgVi4gS29ybmlsb3YKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
