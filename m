Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B46041DE08E
	for <lists+linux-rockchip@lfdr.de>; Fri, 22 May 2020 09:03:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+61lf+mzGjID0mP9ymHeu3JXEs0f9umH9n3dZKUHFk=; b=ZuhxXsOC1w/vPx
	HlGgt9c0Ok2UIe/K1WUuf+j9KlQ2LQ1QZAp/PmqnXFAKVVC86irkQb0V5ErZRanXhaEdp0gnkkg04
	9V091lHGk2hpzI4qx6aRYktCDb04a8KfmDCDYA1FGYPqOxSTjx0ONJM6SRJBK/Dyec7JvAyVRe6zN
	OwsVlQCDuc0E3v8JHwyov/8T/GXxad4qRDLP09EKyK9p5WqmBUS5t5ugmsE2hw2q4HtBb/k7U8PBP
	zZm3aukRUSe0Zreot4YlQQRcoBM7yoUkNSrk8d9CNcykdouxhncrLzBwg2IIKBpFZOukFqrKnAidf
	btmGrI0ro9lqqcEo8y/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc1hv-00008c-BE; Fri, 22 May 2020 07:03:03 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc1hr-000082-Gi
 for linux-rockchip@lists.infradead.org; Fri, 22 May 2020 07:03:01 +0000
Received: by mail-ej1-x642.google.com with SMTP id s3so11789550eji.6
 for <linux-rockchip@lists.infradead.org>; Fri, 22 May 2020 00:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=m3MY0hxfu2FoF4BKEDPHtsOYwKZiEOaO4NYQIgH8Sv4=;
 b=pZGRoizJRm9pzkaEHrRPGsFDkVUozqAM4Jq6FUUfcqS3ubWT5m8i4vRNqk9uDwwkYd
 43/8khpc8YwnJKgObFAR9UO4Q5ByACrnND855DCwDa+IsJ3Ej0A7n0wxiwMaDt4jIUxH
 9i+lIXVfGG8h4Fw8iMJY3XJ+iGeUwh+Zs9EmI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=m3MY0hxfu2FoF4BKEDPHtsOYwKZiEOaO4NYQIgH8Sv4=;
 b=tC2B32+kjKDSwT2ZXniwmOHkQktBqRM4E2oQ4VuXvkC4MwiowrQC1D+LZUPpLKnK27
 kSwGrHGZkwYA2OyLDmoCWR/tlVR6HXmpOHuY3Fz9hGsp7+3pdkmqSiw5ynwq5xCAIvTC
 Vpajaff3Kc0kxHDe/SRBQPnMctEeItYM5l/K0mZ8DZqGV3jp+hB46PI7UO9qUVWvqzuE
 gEysuTab6+dpzx12/2apZr0w2+qVFHSztucuBogJ97faNjYrqBRbTjCJAgkQoI219rQ1
 IqEmALDzSghgqiGGaIsyoQa8ZY29h51wRa7+xEXVwQQAbRvhNPP9BOQiBkvLOCFmH5G1
 CaJQ==
X-Gm-Message-State: AOAM532EoaOk3nYHHKgeainsugk71yepURLV4WL4uEjeRNcTB2R8eMoU
 Oq+/+xtquxPfF4CFSgc8Km7yBc/klo4KBzjJ3uKFmA==
X-Google-Smtp-Source: ABdhPJyGVIkUx/XAqgohc3uXm46cU5R6jVyBLd42MPc3T6fvpa+HbiLIq7/GdkXhBObPn4vCArbXIzS6fR/tGxDxsiQ=
X-Received: by 2002:a17:906:ce56:: with SMTP id
 se22mr6703588ejb.522.1590130977236; 
 Fri, 22 May 2020 00:02:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200509165624.20791-1-jagan@amarulasolutions.com>
 <20200509165624.20791-7-jagan@amarulasolutions.com>
 <ba64b7ac-84d1-2763-1fa0-a332dab03e6a@rock-chips.com>
In-Reply-To: <ba64b7ac-84d1-2763-1fa0-a332dab03e6a@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 22 May 2020 12:32:45 +0530
Message-ID: <CAMty3ZD64YSaH21UbJ1dwMLtHGOcKgG8gfE_T_fGzk2fBQnBMw@mail.gmail.com>
Subject: Re: [PATCH v3 6/6] rockchip: Enable PCIe/M.2 on rock960 board
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_000259_973158_15F9DAA8 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Patrick Wildt <patrick@blueri.se>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tom Cubie <tom@radxa.com>, Simon Glass <sjg@chromium.org>,
 U-Boot-Denx <u-boot@lists.denx.de>, Suniel Mahesh <sunil@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Shawn Lin <shawn.lin@rock-chips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgS2V2ZXIsCgpPbiBGcmksIE1heSAyMiwgMjAyMCBhdCA4OjQ1IEFNIEtldmVyIFlhbmcgPGtl
dmVyLnlhbmdAcm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gSGkgSmFnYW4sCj4KPiBPbiAyMDIw
LzUvMTAg5LiK5Y2IMTI6NTYsIEphZ2FuIFRla2kgd3JvdGU6Cj4gPiBEdWUgdG8gYm9hcmQgbGlt
aXRhdGlvbiBzb21lIFNTRCdzIHdvdWxkIHdvcmsKPiA+IG9uIHJvY2s5NjAgUENJZSBNLjIgb25s
eSB3aXRoIDEuOFYgSU8gZG9tYWluLgo+ID4KPiA+IFNvLCB0aGlzIHBhdGNoIGVuYWJsZXMgZ3Jm
IGlvX3NlbCBleHBsaWNpdGx5IHRvCj4gPiBtYWtlIFBDSWUvTS4yIHRvIHdvcmsuCj4gPgo+ID4g
Q2M6IFRvbSBDdWJpZSA8dG9tQHJhZHhhLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRl
a2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+ID4gQWNrZWQtYnk6IE1hbml2YW5uYW4g
U2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4gPiAtLS0KPiA+
IENoYW5nZXMgZm9yIHYzOgo+ID4gLSBjb2xsZWN0IG1hbmkgYS1iCj4gPiAtIGFkZCBjb21tZW50
cwo+ID4KPiA+ICAgYm9hcmQvdmFtcnMvcm9jazk2MF9yazMzOTkvcm9jazk2MC1yazMzOTkuYyB8
IDIzICsrKysrKysrKysrKysrKysrKysrKwo+ID4gICBjb25maWdzL3JvY2s5NjAtcmszMzk5X2Rl
ZmNvbmZpZyAgICAgICAgICAgIHwgIDUgKysrKysKPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyOCBp
bnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2JvYXJkL3ZhbXJzL3JvY2s5NjBfcmsz
Mzk5L3JvY2s5NjAtcmszMzk5LmMgYi9ib2FyZC92YW1ycy9yb2NrOTYwX3JrMzM5OS9yb2NrOTYw
LXJrMzM5OS5jCj4gPiBpbmRleCA2OGExMjdiOWFjLi5lZjFlYjJkMGI3IDEwMDY0NAo+ID4gLS0t
IGEvYm9hcmQvdmFtcnMvcm9jazk2MF9yazMzOTkvcm9jazk2MC1yazMzOTkuYwo+ID4gKysrIGIv
Ym9hcmQvdmFtcnMvcm9jazk2MF9yazMzOTkvcm9jazk2MC1yazMzOTkuYwo+ID4gQEAgLTIsMyAr
MiwyNiBAQAo+ID4gICAvKgo+ID4gICAgKiBDb3B5cmlnaHQgKEMpIDIwMTggTWFuaXZhbm5hbiBT
YWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KPiA+ICAgICovCj4g
PiArCj4gPiArI2luY2x1ZGUgPGNvbW1vbi5oPgo+ID4gKyNpbmNsdWRlIDxzeXNjb24uaD4KPiA+
ICsjaW5jbHVkZSA8YXNtL2lvLmg+Cj4gPiArI2luY2x1ZGUgPGFzbS9hcmNoLXJvY2tjaGlwL2Ns
b2NrLmg+Cj4gPiArI2luY2x1ZGUgPGFzbS9hcmNoLXJvY2tjaGlwL2dyZl9yazMzOTkuaD4KPiA+
ICsjaW5jbHVkZSA8YXNtL2FyY2gtcm9ja2NoaXAvaGFyZHdhcmUuaD4KPiA+ICsKPiA+ICsjaWZk
ZWYgQ09ORklHX01JU0NfSU5JVF9SCj4gPiAraW50IG1pc2NfaW5pdF9yKHZvaWQpCj4gPiArewo+
ID4gKyAgICAgc3RydWN0IHJrMzM5OV9ncmZfcmVncyAqZ3JmID0KPiA+ICsgICAgICAgICBzeXNj
b25fZ2V0X2ZpcnN0X3JhbmdlKFJPQ0tDSElQX1NZU0NPTl9HUkYpOwo+ID4gKwo+ID4gKyAgICAg
LyoqCj4gPiArICAgICAgKiBTb21lIFNTRCdzIHRvIHdvcmsgb24gcm9jazk2MCB3b3VsZCByZXF1
aXJlIGV4cGxpY2l0Cj4gPiArICAgICAgKiBkb21haW4gdm9sdGFnZSBjaGFuZ2UsIHNvIEJUNTY1
IGlzIGluIDEuOHYgZG9tYWluCj4gPiArICAgICAgKi8KPiA+ICsgICAgIHJrX3NldHJlZygmZ3Jm
LT5pb192c2VsLCBCSVQoMCkpOwo+ICsgIHJrX3NldHJlZygmZ3JmLT5pb192c2VsLCBCSVQoMCkp
Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBeCj4gK2FyY2gvYXJtL2luY2x1ZGUvYXNt
L2lvLmg6MTE4OjM0OiBub3RlOiBpbiBkZWZpbml0aW9uIG9mIG1hY3JvIOKAmHdyaXRlbOKAmQo+
ICsgI2RlZmluZSB3cml0ZWwodixjKSAoeyB1MzIgX192ID0gdjsgX19pb3dtYigpOyBfX2FyY2hf
cHV0bChfX3YsYyk7IF9fdjsgfSkKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IF4KPiArYm9hcmQvdmFtcnMvcm9jazk2MF9yazMzOTkvcm9jazk2MC1yazMzOTkuYzoyMzoyOiBu
b3RlOiBpbiBleHBhbnNpb24gb2YKPiBtYWNybyDigJhya19zZXRyZWfigJkKPiArICBefn5+fn5+
fn4KPiArYm9hcmQvdmFtcnMvcm9jazk2MF9yazMzOTkvYnVpbHQtaW4ubzogSW4gZnVuY3Rpb24g
YG1pc2NfaW5pdF9yJzoKPiArYm9hcmQvdmFtcnMvcm9jazk2MF9yazMzOTkvcm9jazk2MC1yazMz
OTkuYzoyMzogdW5kZWZpbmVkIHJlZmVyZW5jZSB0bwo+IGBCSVQnCj4gK21ha2VbMV06ICoqKiBb
dS1ib290XSBFcnJvciAxMzkKPgo+Cj4gRGlkIHlvdSBnZXQgdGhpcyBlcnJvciB3aGVuIGJ1aWxk
IHRoZSBjb2RlPwoKU29ycnksIEkgaGF2ZSBmb3Jnb3R0ZW4gdG8gY29tbWl0IGJpdG9wcyBoZWFk
ZXIsIHdpbGwgc2VuZCB0aGlzIHBhdGNoCmFsb25lIGZvciB0aGUgbmV4dCB2ZXJzaW9uLgoKSmFn
YW4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
