Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D437B5B7
	for <lists+linux-rockchip@lfdr.de>; Sun, 28 Apr 2019 10:54:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EG1mx6rSR51M3f8GIgBNhwtr75VMA+/Ew4DgRM3AmUk=; b=NPM3RonQab3wXr
	Qdhx6c6X8oKjjUVLGMXS1cGXwWh+v3+es8mKRA+kHoyVCvCL6ySagW0jCWJcmwZYidQhjasBcwgEO
	jKZbpFzW5naoWCICW0sTx0QSAo4O3YayhljV8uEE20zJif0cG95vQPot1qfzPVZlzq878TJoV42Zy
	b4d//j3LdVdL0BR+nx/Z6fA9FZWWLbh4B7oEOMa6v6ZpYZZfAVYgxSbOy8wjVvuPHiz/AB2IU6miU
	OJlvXLiw4dg9v3GGGg3IG5/izdrvNvI/GetzsnNnNB1ZIAdfxjszs0wNaMIBR9JRsIk7tGG2wfaXD
	afFA4MxM1eVyV5LufFNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKfZd-0004st-A6; Sun, 28 Apr 2019 08:54:13 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKfZZ-0004sa-Cp
 for linux-rockchip@lists.infradead.org; Sun, 28 Apr 2019 08:54:11 +0000
Received: by mail-io1-xd43.google.com with SMTP id a23so6478318iot.4
 for <linux-rockchip@lists.infradead.org>; Sun, 28 Apr 2019 01:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4l/teGT7/4cyzuQ8oBSFc1qRTtB0OfX5N6K4Y3U0c8E=;
 b=VzeOZI/0YIR2/Cu1YY/cmyknyHaaqMa29A7GooU8he2sJ2Zmw7JHV528rLEYXWD00c
 JO1fznzFj/Y5mXf5565l+uEhO2gggCUPrQK62IT3A74PPfyTbwav8hbtJ8DfqcCZsVwU
 mjivvIcO0I5vcibjTP9yLbGiw2ff0rcziCW3A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4l/teGT7/4cyzuQ8oBSFc1qRTtB0OfX5N6K4Y3U0c8E=;
 b=LmtHsLPVk60FB+XtDdlYnEMbJVtaUiciSPx6Qju3zaSh4m3MAADvW9nfY3aXhBioU4
 AzrQ01fBfNPp+HPqr2lW4PkpGpnrQb+VHRsi+t8QVDW5V/mPuWFukUhf0CKl5lHAM/my
 gEZ5wf+BrMa8AMKv2JHNkQiJtTmQlvjxMdSIncTDnPApngoPgi8NmuzvM0K8NrOfr+vf
 rLIZCgRHuT1EdkL7AM0wJB8xA+ctk0WZyMlt6X2fD/rfWWJkOnKNfD5jp+JL7aZ4eIMB
 o9922Ms+plRq2kqsa6V9Oyiiuo4lFxYQnUYlXYEayZFpG9FSn91ga7/bmqej0Tfs1A16
 lQrQ==
X-Gm-Message-State: APjAAAW+9xF+tArc1kKGkBonjmHlo9Gul8mrgY8amrjzxeNOnYfVligW
 zGS0q5CAdH+8UxNWO+GLrXhd2wsI59mXPeiN03DuhQ==
X-Google-Smtp-Source: APXvYqxworP3CRuHm/2IrjgW/BH6xHZHfHGOTgGEY9uxBxrxgEOv5VXnQETc9MMTFjCxzGKB6UBexybrZ2BS5MdS5r4=
X-Received: by 2002:a6b:2c92:: with SMTP id
 s140mr19945585ios.114.1556441644593; 
 Sun, 28 Apr 2019 01:54:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190427114852.7608-1-jagan@amarulasolutions.com>
 <20190427114852.7608-10-jagan@amarulasolutions.com>
In-Reply-To: <20190427114852.7608-10-jagan@amarulasolutions.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sun, 28 Apr 2019 14:23:53 +0530
Message-ID: <CAMty3ZASEsFb+Q5K2EqM7sp0_QsL+XOXmkqJCbtPskUDGB6RWw@mail.gmail.com>
Subject: Re: [PATCH v6 09/13] rockchip: rk3399: Add Nanopc T4 board support
To: Simon Glass <sjg@chromium.org>, 
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, 
 Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_015409_903587_209D1469 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Tom Rini <trini@konsulko.com>, U-Boot-Denx <u-boot@lists.denx.de>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gU2F0LCBBcHIgMjcsIDIwMTkgYXQgNToxOSBQTSBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxh
c29sdXRpb25zLmNvbT4gd3JvdGU6Cj4KPiBBZGQgaW5pdGlhbCBzdXBwb3J0IGZvciBOYW5vcGMg
VDQgYm9hcmQuCj4KPiBTcGVjaWZpY2F0aW9uCj4gLSBSb2NrY2hpcCBSSzMzOTkKPiAtIER1YWwt
Q2hhbm5lbCA0R0IgTFBERFIzLTE4NjYKPiAtIFNEIGNhcmQgc2xvdAo+IC0gMTZHQiBlTU1DCj4g
LSBSVEw4MjExRSAxR2Jwcwo+IC0gQVA2MzU2UyBXaUZJL0JUCj4gLSBIRE1JIEluL091dCwgRFAs
IE1JUEkgRFNJL0NTSSwgZURQCj4gLSBVU0IgMy4wLCAyLjAKPiAtIFVTQiBUeXBlIEMgcG93ZXIg
YW5kIGRhdGEKPiAtIEdQSU8gZXhwYW5zaW9uIHBvcnRzCj4gLSBEQyAxMlYvMkEKPgo+IENvbW1p
dCBkZXRhaWxzIG9mIHJrMzM5OS1uYW5vcGMtdDQuZHRzIHN5bmMgZnJvbSBMaW51eCA1LjEtcmMy
Ogo+ICJhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIE5hbm9QQy1UNCBJUiByZWNlaXZlciIKPiAo
c2hhMTogOTU2NThlMjFiMTcwN2FkNzg0NGY4NzNkYjJmZGFhMjk1MTA5YTVhMykKPgo+IFRlc3Rl
ZC1ieTogRGFuaWVsIEdyw7ZiZXIgPGR4bGRAZGFya2JveGVkLm9yZz4KPiBTaWduZWQtb2ZmLWJ5
OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiAtLS0KPiAgYXJjaC9h
cm0vZHRzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgfCAgMSArCj4gIGFyY2gvYXJtL2R0
cy9yazMzOTktbmFub3BjLXQ0LXUtYm9vdC5kdHNpIHwgIDcgKysKPiAgYXJjaC9hcm0vZHRzL3Jr
MzM5OS1uYW5vcGMtdDQuZHRzICAgICAgICAgfCA5MSArKysrKysrKysrKysrKysrKysrKysrKwo+
ICBib2FyZC9yb2NrY2hpcC9ldmJfcmszMzk5L01BSU5UQUlORVJTICAgICB8ICA2ICsrCj4gIGNv
bmZpZ3MvbmFub3BjLXQ0LXJrMzM5OV9kZWZjb25maWcgICAgICAgIHwgNTggKysrKysrKysrKysr
KysrCj4gIDUgZmlsZXMgY2hhbmdlZCwgMTYzIGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGFyY2gvYXJtL2R0cy9yazMzOTktbmFub3BjLXQ0LXUtYm9vdC5kdHNpCj4gIGNyZWF0
ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9kdHMvcmszMzk5LW5hbm9wYy10NC5kdHMKPiAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGNvbmZpZ3MvbmFub3BjLXQ0LXJrMzM5OV9kZWZjb25maWcKPgo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybS9kdHMvTWFrZWZpbGUgYi9hcmNoL2FybS9kdHMvTWFrZWZpbGUKPiBp
bmRleCBkMmFjMjZiNTU2Li5lMDQ4NTY1YmI2IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2R0cy9N
YWtlZmlsZQo+ICsrKyBiL2FyY2gvYXJtL2R0cy9NYWtlZmlsZQo+IEBAIC04Nyw2ICs4Nyw3IEBA
IGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSBcCj4gICAgICAgICByazMzOTktZXZiLmR0
YiBcCj4gICAgICAgICByazMzOTktZmlyZWZseS5kdGIgXAo+ICAgICAgICAgcmszMzk5LWdydS1i
b2IuZHRiIFwKPiArICAgICAgIHJrMzM5OS1uYW5vcGMtdDQuZHRiIFwKPiAgICAgICAgIHJrMzM5
OS1uYW5vcGktbTQuZHRiIFwKPiAgICAgICAgIHJrMzM5OS1vcmFuZ2VwaS5kdGIgXAo+ICAgICAg
ICAgcmszMzk5LXB1bWEtZGRyMTMzMy5kdGIgXAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMv
cmszMzk5LW5hbm9wYy10NC11LWJvb3QuZHRzaSBiL2FyY2gvYXJtL2R0cy9yazMzOTktbmFub3Bj
LXQ0LXUtYm9vdC5kdHNpCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAw
Li4xNzIwMWJjZjQxCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2FyY2gvYXJtL2R0cy9yazMzOTkt
bmFub3BjLXQ0LXUtYm9vdC5kdHNpCj4gQEAgLTAsMCArMSw3IEBACj4gKy8vIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBHUEwtMi4wKwo+ICsvKgo+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTkgSmFn
YW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gKyAqLwo+ICsKPiArI2luY2x1
ZGUgInJrMzM5OS1uYW5vcGk0LXUtYm9vdC5kdHNpIgo+ICsjaW5jbHVkZSAicmszMzk5LXNkcmFt
LWxwZGRyMy1zYW1zdW5nLTRHQi0xODY2LmR0c2kiCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0
cy9yazMzOTktbmFub3BjLXQ0LmR0cyBiL2FyY2gvYXJtL2R0cy9yazMzOTktbmFub3BjLXQ0LmR0
cwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMC4uODQ0MzNjZjAyYgo+
IC0tLSAvZGV2L251bGwKPiArKysgYi9hcmNoL2FybS9kdHMvcmszMzk5LW5hbm9wYy10NC5kdHMK
PiBAQCAtMCwwICsxLDkxIEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIu
MCsgT1IgTUlUKQo+ICsvKgo+ICsgKiBGcmllbmRseUVsZWMgTmFub1BDLVQ0IGJvYXJkIGRldmlj
ZSB0cmVlIHNvdXJjZQo+ICsgKgo+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTggRnJpZW5kbHlFbGVj
IENvbXB1dGVyIFRlY2guIENvLiwgTHRkLgo+ICsgKiAoaHR0cDovL3d3dy5mcmllbmRseWFybS5j
b20pCj4gKyAqCj4gKyAqIENvcHlyaWdodCAoYykgMjAxOCBDb2xsYWJvcmEgTHRkLgo+ICsgKi8K
PiArCj4gKy9kdHMtdjEvOwo+ICsjaW5jbHVkZSAicmszMzk5LW5hbm9waTQuZHRzaSIKPiArCj4g
Ky8gewo+ICsgICAgICAgbW9kZWwgPSAiRnJpZW5kbHlFbGVjIE5hbm9QQy1UNCI7Cj4gKyAgICAg
ICBjb21wYXRpYmxlID0gImZyaWVuZGx5YXJtLG5hbm9wYy10NCIsICJyb2NrY2hpcCxyazMzOTki
Owo+ICsKPiArICAgICAgIHZjYzEydjBfc3lzOiB2Y2MxMnYwLXN5cyB7Cj4gKyAgICAgICAgICAg
ICAgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiArICAgICAgICAgICAgICAgcmVn
dWxhdG9yLWFsd2F5cy1vbjsKPiArICAgICAgICAgICAgICAgcmVndWxhdG9yLWJvb3Qtb247Cj4g
KyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDEyMDAwMDAwPjsKPiAr
ICAgICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTIwMDAwMDA+Owo+ICsg
ICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2MxMnYwX3N5cyI7Cj4gKyAgICAgICB9
Owo+ICsKPiArICAgICAgIHZjYzV2MF9ob3N0MDogdmNjNXYwLWhvc3QwIHsKPiArICAgICAgICAg
ICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ICsgICAgICAgICAgICAgICBy
ZWd1bGF0b3ItYWx3YXlzLW9uOwo+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItYm9vdC1vbjsK
PiArICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX2hvc3QwIjsKPiArICAg
ICAgICAgICAgICAgdmluLXN1cHBseSA9IDwmdmNjNXYwX3N5cz47Cj4gKyAgICAgICB9Owo+ICsK
PiArICAgICAgIGFkYy1rZXlzIHsKPiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhZGMt
a2V5cyI7Cj4gKyAgICAgICAgICAgICAgIGlvLWNoYW5uZWxzID0gPCZzYXJhZGMgMT47Cj4gKyAg
ICAgICAgICAgICAgIGlvLWNoYW5uZWwtbmFtZXMgPSAiYnV0dG9ucyI7Cj4gKyAgICAgICAgICAg
ICAgIGtleXVwLXRocmVzaG9sZC1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4gKyAgICAgICAgICAg
ICAgIHBvbGwtaW50ZXJ2YWwgPSA8MTAwPjsKPiArCj4gKyAgICAgICAgICAgICAgIHJlY292ZXJ5
IHsKPiArICAgICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJSZWNvdmVyeSI7Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgbGludXgsY29kZSA9IDxLRVlfVkVORE9SPjsKPiArICAgICAgICAg
ICAgICAgICAgICAgICBwcmVzcy10aHJlc2hvbGQtbWljcm92b2x0ID0gPDE4MDAwPjsKPiArICAg
ICAgICAgICAgICAgfTsKPiArICAgICAgIH07Cj4gKwo+ICsgICAgICAgaXItcmVjZWl2ZXIgewo+
ICsgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImdwaW8taXItcmVjZWl2ZXIiOwo+ICsgICAg
ICAgICAgICAgICBncGlvcyA9IDwmZ3BpbzAgUktfUEE2IEdQSU9fQUNUSVZFX0xPVz47Cj4gKyAg
ICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKyAgICAgICAgICAgICAg
IHBpbmN0cmwtMCA9IDwmaXJfcng+Owo+ICsgICAgICAgfTsKPiArfTsKPiArCj4gKyZwaW5jdHJs
IHsKPiArICAgICAgIGlyIHsKPiArICAgICAgICAgICAgICAgaXJfcng6IGlyLXJ4IHsKPiArICAg
ICAgICAgICAgICAgICAgICAgICAvKiBleHRlcm5hbCBwdWxsdXAgdG8gVkNDM1YzX1NZUywgZGVz
cGl0ZSBiZWluZyAxLjhWIDovICovCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcm9ja2NoaXAs
cGlucyA9IDwwIFJLX1BBNiBSS19GVU5DXzEgJnBjZmdfcHVsbF9ub25lPjsKPiArICAgICAgICAg
ICAgICAgfTsKPiArICAgICAgIH07Cj4gK307Cj4gKwo+ICsmc2RoY2kgewo+ICsgICAgICAgbW1j
LWhzNDAwLTFfOHY7Cj4gKyAgICAgICBtbWMtaHM0MDAtZW5oYW5jZWQtc3Ryb2JlOwo+ICt9Owo+
ICsKPiArJnUycGh5MF9ob3N0IHsKPiArICAgICAgIHBoeS1zdXBwbHkgPSA8JnZjYzV2MF9ob3N0
MD47Cj4gK307Cj4gKwo+ICsmdTJwaHkxX2hvc3Qgewo+ICsgICAgICAgcGh5LXN1cHBseSA9IDwm
dmNjNXYwX2hvc3QwPjsKPiArfTsKPiArCj4gKyZ2Y2M1djBfc3lzIHsKPiArICAgICAgIHZpbi1z
dXBwbHkgPSA8JnZjYzEydjBfc3lzPjsKPiArfTsKPiArCj4gKyZ2Y2MzdjNfc3lzIHsKPiArICAg
ICAgIHZpbi1zdXBwbHkgPSA8JnZjYzEydjBfc3lzPjsKPiArfTsKPiArCj4gKyZ2YnVzX3R5cGVj
IHsKPiArICAgICAgIGVuYWJsZS1hY3RpdmUtaGlnaDsKPiArICAgICAgIGdwaW9zID0gPCZncGlv
NCBSS19QRDIgR1BJT19BQ1RJVkVfSElHSD47Cj4gKyAgICAgICB2aW4tc3VwcGx5ID0gPCZ2Y2M1
djBfc3lzPjsKPiArfTsKPiBkaWZmIC0tZ2l0IGEvYm9hcmQvcm9ja2NoaXAvZXZiX3JrMzM5OS9N
QUlOVEFJTkVSUyBiL2JvYXJkL3JvY2tjaGlwL2V2Yl9yazMzOTkvTUFJTlRBSU5FUlMKPiBpbmRl
eCBhZTQzODA1YTZhLi41OTE3YWJiOWMxIDEwMDY0NAo+IC0tLSBhL2JvYXJkL3JvY2tjaGlwL2V2
Yl9yazMzOTkvTUFJTlRBSU5FUlMKPiArKysgYi9ib2FyZC9yb2NrY2hpcC9ldmJfcmszMzk5L01B
SU5UQUlORVJTCj4gQEAgLTYsNiArNiwxMiBAQCBGOiAgICAgIGluY2x1ZGUvY29uZmlncy9ldmJf
cmszMzk5LmgKPiAgRjogICAgICBjb25maWdzL2V2Yi1yazMzOTlfZGVmY29uZmlnCj4gIEY6ICAg
ICAgY29uZmlncy9maXJlZmx5LXJrMzM5OV9kZWZjb25maWcKPgo+ICtOQU5PUEMtVDQKPiArTTog
ICAgIEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+ICtTOiAgICAgTWFp
bnRhaW5lZAo+ICtGOiAgICAgY29uZmlncy9uYW5vcGljLXQ0LXJrMzM5OV9kZWZjb25maWcKPiAr
RjogICAgIGFyY2gvYXJtL2R0cy9yazMzOTktbmFub3BpYy10NC11LWJvb3QuZHRzaQoKUGxlYXNl
IHJlbW92ZSBpIGZyb20gYWJvdmUgRiBsaXN0IGR1cmluZyBtZXJnZS4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
