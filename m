Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2716512FBA8
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 Jan 2020 18:35:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GHYalLKS7qklkfdEBZ7bhu0IhLmsYFYQprTAY030WQ=; b=CgAWi1N/SyECMG
	uemO+YOx/14iupMvBM4m+aeUWkP/O1imG9jBC3h+CMUNDchZ69wNWNLY0z1tUUiMnjms5ctXTbdc0
	qwEdGwVy/ETbWTxij6fyuuepXHMfm1Q5wlZ5eP2+hDN2VhMrXzT9V1GJ9x0zIc55UO7UoKg1R1mte
	9VemyC8zX/3pZT+t4tjo4C60l9ZzyJkQLQDPVu5kLKG1AWpjFGvqVVbsdPC4DMhEoFEo87Ifg9TuN
	L7p8yEBz+keq78TInyYAXUgweIpZlo07ZN+ZN8fBZmbvYr7SCNG1ENkC8q+1TVl450WYgaxVmCu7r
	ZWsDUxqjsfwP+/kr9XJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inQr3-0005rK-S5; Fri, 03 Jan 2020 17:35:21 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inQr0-0005qe-Dp
 for linux-rockchip@lists.infradead.org; Fri, 03 Jan 2020 17:35:20 +0000
Received: by mail-il1-x143.google.com with SMTP id x5so37142549ila.6
 for <linux-rockchip@lists.infradead.org>; Fri, 03 Jan 2020 09:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=GolCAl86T72TPyB5sreOOenFiIAj16nfjjBSX942P1U=;
 b=lhLB9S1NfGSQeET7NnhzMKcSo+Ax8AJc2Yk+SfE0bWH1bRscyIjlUNXbO1R7FiVDem
 C7EkduFPuIxHd0fXv+zHt1CZ6/LUuVocLhwOA1J6i4/Ft2dctOYmJitJe2lpOdz4BjoV
 YztX0bCkLAKPwpx46F6KpTKx859BJ/BYScD+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GolCAl86T72TPyB5sreOOenFiIAj16nfjjBSX942P1U=;
 b=RUS6SiOSr3sVdOI/yS9rJeC1Ca/P2M/Wd1kzk4nCQodLUg3E2zDhI1oy63xgyK0cG8
 8kbFCrW8kIsd72v9LRHjQv6aaBcgAi5fWMs2xLeAUMpU55JO2KIazDp3ufcGHHPDzzt8
 X2G3W1Ah2gYo/OmhntXrpmBaD9v7zIPJPPP0oSZQwsGvf5Cx6nhZrnxto9J8BHmfUtzA
 A0cstCNykOcLT2YSXcVV2ibz54xjA+3DKl+GXK5OCsldeY0p7dRSZsLyOV785O3YVaAb
 CaqwUv+1A2LUKDgkI2yFBfRlO7JcyRn9QU1VvNyKxgMopPd+76X0+fHOsJW7qoeqK/Lv
 wDRQ==
X-Gm-Message-State: APjAAAXX4nxsDswgEwG6Qg+SMTn1ZI2NYj11ULICK9VYe+3nItUM7Hw0
 czzSn7QHNSx+5/QHt9CyQO7WlfuwMdIUoRJnOpv0i2DtTFg=
X-Google-Smtp-Source: APXvYqxChOjtUEMfJPWtF5DGDr2BedEx3qgo5xqrckiEM+/2deyBHgrrOFsGyQiCxRXsRjYWbMFZBiDRMs+d1kRUG5E=
X-Received: by 2002:a92:17cb:: with SMTP id 72mr77412126ilx.173.1578072916162; 
 Fri, 03 Jan 2020 09:35:16 -0800 (PST)
MIME-Version: 1.0
References: <20191230082819.30191-1-jagan@amarulasolutions.com>
 <20191230082819.30191-7-jagan@amarulasolutions.com>
 <CAJs94EZiDzMDZ=FS_G0e+O_5Q8iP15Rvp=oa3f4h659WQEaS8w@mail.gmail.com>
 <CAJs94EZgpHmkHAfDQUH_mqW82Jw_QJWiJgx_8Uny1ru1WfbrHw@mail.gmail.com>
In-Reply-To: <CAJs94EZgpHmkHAfDQUH_mqW82Jw_QJWiJgx_8Uny1ru1WfbrHw@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 3 Jan 2020 23:05:05 +0530
Message-ID: <CAMty3ZCGTSX7Y0TUDriOi1e6c3p=FK3V90DviYXMmqLbvNZjew@mail.gmail.com>
Subject: Re: [PATCH v5 6/7] rockchip: Add Single boot image (with binman,
 pad_cat)
To: "Matwey V. Kornilov" <matwey.kornilov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_093518_610021_8152156C 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

T24gVHVlLCBEZWMgMzEsIDIwMTkgYXQgMTozNCBQTSBNYXR3ZXkgVi4gS29ybmlsb3YKPG1hdHdl
eS5rb3JuaWxvdkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4g0LLRgiwgMzEg0LTQtdC6LiAyMDE5INCz
LiDQsiAxMDo1NCwgTWF0d2V5IFYuIEtvcm5pbG92IDxtYXR3ZXkua29ybmlsb3ZAZ21haWwuY29t
PjoKPiA+Cj4gPiDQv9C9LCAzMCDQtNC10LouIDIwMTkg0LMuINCyIDExOjI4LCBKYWdhbiBUZWtp
IDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT46Cj4gPiA+Cj4gPiA+IEFsbCByb2NrY2hpcCBw
bGF0Zm9ybXMgc3VwcG9ydCBUUEwgb3IgU1BMLWJhc2VkIGJvb3Rsb2FkZXIKPiA+ID4gaW4gbWFp
bmxpbmUgd2l0aCBVLUJvb3QgcHJvcGVyIGFzIGZpbmFsIHN0YWdlLiBGb3IgZWFjaAo+ID4gPiBz
dGFnZSB3ZSBuZWVkIHRvIGJ1cm4gdGhlIGltYWdlIG9uIHRvIGZsYXNoIHdpdGggcmVzcGVjdGl2
ZQo+ID4gPiBvZmZzZXRzLgo+ID4gPgo+ID4gPiBUaGlzIHBhdGNoIGNyZWF0ZXMgYSBzaW5nbGUg
Ym9vdCBpbWFnZSBjb21wb25lbnQgdXNpbmcKPiA+ID4gLSBiaW5tYW4sIGZvciBhcm0zMiByb2Nr
Y2hpcCBwbGF0Zm9ybXMKPiA+ID4gLSBwYWRfY2F0LCBmb3IgYXJtNjQgcm9ja2NoaXAgcGxhdGZv
cm1zLgo+ID4gPgo+ID4gPiBUaGlzIHdvdWxkIGhlbHAgdXNlcnMgdG8gZ2V0IHJpZCBvZiBidXJu
aW5nIGRpZmZlcmVudAo+ID4gPiBib290IHN0YWdlIGltYWdlcy4KPiA+ID4KPiA+ID4gVGhlIG5l
dyBpbWFnZSBjYWxsZWQgJ3UtYm9vdC1yb2NrY2hpcC5iaW4nCj4gPiA+IHdoaWNoIGNhbiBidXJu
IGludG8gZmxhc2ggbGlrZToKPiA+ID4KPiA+ID4g4oK5IHN1ZG8gZGQgaWY9dS1ib290LXJvY2tj
aGlwLmJpbiBvZj0vZGV2L3NkYSBzZWVrPTY0Cj4gPiA+Cj4gPiA+IFRoaXMgd291bGQgc3VwcG9y
dCBhbGwgcm9ja2NoaXAgcGxhdGZvcm1zLCBleGNlcHQgcmszMTI4Cj4gPiA+IHNpbmNlIGl0IGRv
ZXNuJ3Qgc3VwcG9ydCBmb3IgU1BMIHlldC4KPiA+ID4KPiA+ID4gQ2M6IEtldmVyIFlhbmcgPGtl
dmVyLnlhbmdAcm9jay1jaGlwcy5jb20+Cj4gPiA+IENjOiBNYXR3ZXkgVi4gS29ybmlsb3YgPG1h
dHdleS5rb3JuaWxvdkBnbWFpbC5jb20+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kg
PGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+ID4gPiBSZXZpZXdlZC1ieTogS2V2ZXIgWWFu
ZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBNYWtlZmlsZSAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAxOCArKysrKysrKysrKysrKy0tLS0KPiA+ID4gIGFy
Y2gvYXJtL0tjb25maWcgICAgICAgICAgICAgICAgICB8ICAxICsKPiA+ID4gIGFyY2gvYXJtL2R0
cy9yazMwMzYtdS1ib290LmR0c2kgICB8ICAyICsrCj4gPiA+ICBhcmNoL2FybS9kdHMvcmszMjg4
LXUtYm9vdC5kdHNpICAgfCAgMiArKwo+ID4gPiAgYXJjaC9hcm0vZHRzL3JvY2tjaGlwLXUtYm9v
dC5kdHNpIHwgMjEgKysrKysrKysrKysrKysrKysrKysrCj4gPiA+ICBpbmNsdWRlL2NvbmZpZ3Mv
cm9ja2NoaXAtY29tbW9uLmggfCAgMiArKwo+ID4gPiAgNiBmaWxlcyBjaGFuZ2VkLCA0MiBpbnNl
cnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gv
YXJtL2R0cy9yb2NrY2hpcC11LWJvb3QuZHRzaQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvTWFr
ZWZpbGUgYi9NYWtlZmlsZQo+ID4gPiBpbmRleCBiNDg2OTNlNTYwLi5kNWI2YzQ1Yzg5IDEwMDY0
NAo+ID4gPiAtLS0gYS9NYWtlZmlsZQo+ID4gPiArKysgYi9NYWtlZmlsZQo+ID4gPiBAQCAtOTA5
LDcgKzkwOSw3IEBAIEFMTC15ICs9IHUtYm9vdC13aXRoLWR0Yi5iaW4KPiA+ID4gIGVuZGlmCj4g
PiA+Cj4gPiA+ICBpZmVxICgkKENPTkZJR19BUkNIX1JPQ0tDSElQKSQoQ09ORklHX1NQTCkseXkp
Cj4gPiA+IC1BTEwteSArPSB1LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbgo+ID4gPiArQUxMLXkgKz0g
dS1ib290LXJvY2tjaGlwLmJpbgo+ID4gPiAgZW5kaWYKPiA+ID4KPiA+ID4gIExERkxBR1NfdS1i
b290ICs9ICQoTERGTEFHU19GSU5BTCkKPiA+ID4gQEAgLTEzODcsMTUgKzEzODcsMjUgQEAgaWZl
cSAoJChDT05GSUdfU1BMKSQoQ09ORklHX1RQTCkseXkpCj4gPiA+ICBNS0lNQUdFRkxBR1NfdS1i
b290LXRwbC1yb2NrY2hpcC5iaW4gPSAtbiAkKENPTkZJR19TWVNfU09DKSAtVCAkKFJPQ0tDSElQ
X0lNR19UWVBFKQo+ID4gPiAgdHBsL3UtYm9vdC10cGwtcm9ja2NoaXAuYmluOiB0cGwvdS1ib290
LXRwbC5iaW4gRk9SQ0UKPiA+ID4gICAgICAgICAkKGNhbGwgaWZfY2hhbmdlZCxta2ltYWdlKQo+
ID4gPiAtdS1ib290LXNwbC1yb2NrY2hpcC5iaW46IHRwbC91LWJvb3QtdHBsLXJvY2tjaGlwLmJp
biBzcGwvdS1ib290LXNwbC5iaW4gRk9SQ0UKPiA+ID4gK3NwbC91LWJvb3Qtc3BsLXJvY2tjaGlw
LmJpbjogdHBsL3UtYm9vdC10cGwtcm9ja2NoaXAuYmluIHNwbC91LWJvb3Qtc3BsLmJpbiBGT1JD
RQo+ID4gPiAgICAgICAgICQoY2FsbCBpZl9jaGFuZ2VkLGNhdCkKPiA+ID4gIGVsc2UKPiA+ID4g
IE1LSU1BR0VGTEFHU191LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbiA9IC1uICQoQ09ORklHX1NZU19T
T0MpIC1UICQoUk9DS0NISVBfSU1HX1RZUEUpCj4gPiA+IC11LWJvb3Qtc3BsLXJvY2tjaGlwLmJp
bjogc3BsL3UtYm9vdC1zcGwuYmluIEZPUkNFCj4gPiA+ICtzcGwvdS1ib290LXNwbC1yb2NrY2hp
cC5iaW46IHNwbC91LWJvb3Qtc3BsLmJpbiBGT1JDRQo+ID4gPiAgICAgICAgICQoY2FsbCBpZl9j
aGFuZ2VkLG1raW1hZ2UpCj4gPiA+ICBlbmRpZgo+ID4gPgo+ID4gPiAtZW5kaWYKPiA+ID4gK2lm
ZXEgKCQoQ09ORklHX0FSTTY0KSwpCj4gPiA+ICt1LWJvb3Qtcm9ja2NoaXAuYmluOiBzcGwvdS1i
b290LXNwbC1yb2NrY2hpcC5iaW4gdS1ib290LmltZyBGT1JDRQo+ID4gPiArICAgICAgICQoY2Fs
bCBpZl9jaGFuZ2VkLGJpbm1hbikKPiA+ID4gK2Vsc2UKPiA+ID4gK09CSkNPUFlGTEFHU191LWJv
b3Qtcm9ja2NoaXAuYmluID0gLUkgYmluYXJ5IC1PIGJpbmFyeSBcCj4gPiA+ICsgICAgICAgLS1w
YWQtdG89JChDT05GSUdfU1BMX1BBRF9UTykgLS1nYXAtZmlsbD0weGZmCj4gPiA+ICt1LWJvb3Qt
cm9ja2NoaXAuYmluOiBzcGwvdS1ib290LXNwbC1yb2NrY2hpcC5iaW4gdS1ib290Lml0YiBGT1JD
RQo+ID4gPiArICAgICAgICQoY2FsbCBpZl9jaGFuZ2VkLHBhZF9jYXQpCj4gPiA+ICtlbmRpZiAj
IENPTkZJR19BUk02NAo+ID4gPiArCj4gPiA+ICtlbmRpZiAjIENPTkZJR19BUkNIX1JPQ0tDSElQ
Cj4gPiA+Cj4gPiA+ICBpZmVxICgkKENPTkZJR19BUkNIX0xQQzMyWFgpJChDT05GSUdfU1BMKSx5
eSkKPiA+ID4gIE1LSU1BR0VGTEFHU19scGMzMnh4LXNwbC5pbWcgPSAtVCBscGMzMnh4aW1hZ2Ug
LWEgJChDT05GSUdfU1BMX1RFWFRfQkFTRSkKPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL0tj
b25maWcgYi9hcmNoL2FybS9LY29uZmlnCj4gPiA+IGluZGV4IGY5ZGFiMDczZWEuLjdiZDk5YmEz
YmIgMTAwNjQ0Cj4gPiA+IC0tLSBhL2FyY2gvYXJtL0tjb25maWcKPiA+ID4gKysrIGIvYXJjaC9h
cm0vS2NvbmZpZwo+ID4gPiBAQCAtMTU5MCw2ICsxNTkwLDcgQEAgY29uZmlnIEFSQ0hfU1RNMzJN
UAo+ID4gPiAgY29uZmlnIEFSQ0hfUk9DS0NISVAKPiA+ID4gICAgICAgICBib29sICJTdXBwb3J0
IFJvY2tjaGlwIFNvQ3MiCj4gPiA+ICAgICAgICAgc2VsZWN0IEJMSwo+ID4gPiArICAgICAgIHNl
bGVjdCBCSU5NQU4gaWYgIUFSTTY0Cj4gPiA+ICAgICAgICAgc2VsZWN0IERNCj4gPiA+ICAgICAg
ICAgc2VsZWN0IERNX0dQSU8KPiA+ID4gICAgICAgICBzZWxlY3QgRE1fSTJDCj4gPiA+IGRpZmYg
LS1naXQgYS9hcmNoL2FybS9kdHMvcmszMDM2LXUtYm9vdC5kdHNpIGIvYXJjaC9hcm0vZHRzL3Jr
MzAzNi11LWJvb3QuZHRzaQo+ID4gPiBpbmRleCAxZTdkMDc5MzE1Li40MWFjMDU0YjgxIDEwMDY0
NAo+ID4gPiAtLS0gYS9hcmNoL2FybS9kdHMvcmszMDM2LXUtYm9vdC5kdHNpCj4gPiA+ICsrKyBi
L2FyY2gvYXJtL2R0cy9yazMwMzYtdS1ib290LmR0c2kKPiA+ID4gQEAgLTIsMyArMiw1IEBACj4g
PiA+ICAvKgo+ID4gPiAgICogQ29weXJpZ2h0IChDKSAyMDE5IEphZ2FuIFRla2kgPGphZ2FuQGFt
YXJ1bGFzb2x1dGlvbnMuY29tPgo+ID4gPiAgICovCj4gPiA+ICsKPiA+ID4gKyNpbmNsdWRlICJy
b2NrY2hpcC11LWJvb3QuZHRzaSIKPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9yazMy
ODgtdS1ib290LmR0c2kgYi9hcmNoL2FybS9kdHMvcmszMjg4LXUtYm9vdC5kdHNpCj4gPiA+IGlu
ZGV4IDNmMDBhM2I2ZDMuLjZkMzE3MzUzNjIgMTAwNjQ0Cj4gPiA+IC0tLSBhL2FyY2gvYXJtL2R0
cy9yazMyODgtdS1ib290LmR0c2kKPiA+ID4gKysrIGIvYXJjaC9hcm0vZHRzL3JrMzI4OC11LWJv
b3QuZHRzaQo+ID4gPiBAQCAtMyw2ICszLDggQEAKPiA+ID4gICAqIENvcHlyaWdodCAoQykgMjAx
OSBSb2NrY2hpcCBFbGVjdHJvbmljcyBDby4sIEx0ZAo+ID4gPiAgICovCj4gPiA+Cj4gPiA+ICsj
aW5jbHVkZSAicm9ja2NoaXAtdS1ib290LmR0c2kiCj4gPiA+ICsKPiA+ID4gIC8gewo+ID4gPiAg
ICAgICAgIGNob3NlbiB7Cj4gPiA+ICAgICAgICAgICAgICAgICB1LWJvb3Qsc3BsLWJvb3Qtb3Jk
ZXIgPSBcCj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvcm9ja2NoaXAtdS1ib290LmR0
c2kgYi9hcmNoL2FybS9kdHMvcm9ja2NoaXAtdS1ib290LmR0c2kKPiA+ID4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKPiA+ID4gaW5kZXggMDAwMDAwMDAwMC4uYmMwYjE0MTJhMgo+ID4gPiAtLS0gL2Rl
di9udWxsCj4gPiA+ICsrKyBiL2FyY2gvYXJtL2R0cy9yb2NrY2hpcC11LWJvb3QuZHRzaQo+ID4g
PiBAQCAtMCwwICsxLDIxIEBACj4gPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BM
LTIuMCsKPiA+ID4gKy8qCj4gPiA+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTkgSmFnYW4gVGVraSA8
amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gPiA+ICsgKi8KPiA+ID4gKwo+ID4gPiArI2lu
Y2x1ZGUgPGNvbmZpZy5oPgo+ID4gPiArCj4gPiA+ICsvIHsKPiA+ID4gKyAgICAgICBiaW5tYW4g
ewo+ID4gPiArICAgICAgICAgICAgICAgZmlsZW5hbWUgPSAidS1ib290LXJvY2tjaGlwLmJpbiI7
Cj4gPiA+ICsgICAgICAgICAgICAgICBwYWQtYnl0ZSA9IDwweGZmPjsKPiA+ID4gKwo+ID4gPiAr
ICAgICAgICAgICAgICAgYmxvYiB7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGZpbGVu
YW1lID0gInNwbC91LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbiI7Cj4gPiA+ICsgICAgICAgICAgICAg
ICB9Owo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgICB1LWJvb3QtaW1nIHsKPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgb2Zmc2V0ID0gPENPTkZJR19TUExfUEFEX1RPPjsKPiA+ID4g
KyAgICAgICAgICAgICAgIH07Cj4gPiA+ICsgICAgICAgfTsKPiA+ID4gK307Cj4gPiA+IGRpZmYg
LS1naXQgYS9pbmNsdWRlL2NvbmZpZ3Mvcm9ja2NoaXAtY29tbW9uLmggYi9pbmNsdWRlL2NvbmZp
Z3Mvcm9ja2NoaXAtY29tbW9uLmgKPiA+ID4gaW5kZXggNjhlMTEwNWE0Yi4uZDdmNWNhOWZhNCAx
MDA2NDQKPiA+ID4gLS0tIGEvaW5jbHVkZS9jb25maWdzL3JvY2tjaGlwLWNvbW1vbi5oCj4gPiA+
ICsrKyBiL2luY2x1ZGUvY29uZmlncy9yb2NrY2hpcC1jb21tb24uaAo+ID4gPiBAQCAtOSw2ICs5
LDggQEAKPiA+ID4KPiA+ID4gICNkZWZpbmUgQ09ORklHX1NZU19OUzE2NTUwX01FTTMyCj4gPiA+
Cj4gPiA+ICsjZGVmaW5lIENPTkZJR19TUExfUEFEX1RPICAgICAgICAgICAgICA4MzU1ODQwCj4g
Pgo+ID4gSSBtYXkgYmUgd3JvbmcsIGJ1dCBzaG91bGRuJ3QgQ09ORklHX1NZU19NTUNTRF9SQVdf
TU9ERV9VX0JPT1RfU0VDVE9SCj4gPiBiZSB1c2VkIGhlcmU/Cj4KPiBJLmUuCj4KPiAjZGVmaW5l
IENPTkZJR19TUExfUEFEX1RPICgoQ09ORklHX1NZU19NTUNTRF9SQVdfTU9ERV9VX0JPT1RfU0VD
VE9SIC0gNjQpICogNTEyKQoKWWVzLCAgSSBkaWQgdHJ5IHRoaXMgbG9naWMuIGJ1dCBhcm02NCBj
b21waWxlciB0aHJvd2luZyB3YXJuaW5nIGR1cmluZwpidWlsZCBmb3IgdGhpcy4gKEknbSB1c2lu
ZyBnY2MgNi4zLjEpCgogIENBVCAgICAgdS1ib290LXJvY2tjaGlwLmJpbgphYXJjaDY0LWxpbnV4
LWdudS1vYmpjb3B5OiAtLXBhZC10bzogYmFkIG51bWJlcjoKKChDT05GSUdfU1lTX01NQ1NEX1JB
V19NT0RFX1VfQk9PVF9TRUNUT1IgLSA2NCkgKiA1MTIpCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
