Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9D31A4689
	for <lists+linux-rockchip@lfdr.de>; Fri, 10 Apr 2020 14:56:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9v6VYA86j4VGp7+ELK6q8DAs8o+F70EOo8f/hAjx1ew=; b=U4hN6Zy0lfiooS
	dEcb1EGasrWh2NVkJ8XNfJQ1eEgrP+N5K0lPI1Pu3+iiW0etTT5AGMYCeiabNLKgwk4QeW2tLh7B8
	JCSk4zrbDElqLGNuU4+1RM3wmCc7XVs20rtIoAgm85ilifjPKT6CTiNGuPY6qdsgr/f5J5tOME+Ap
	k1d2003G3BCsrgJj5aWkeccCbr4Ixwl7Hd5MhFf63jZcihQqR/lIlge1MulgOcrxFiV2cBO+fnb3d
	KFzJky9VKUdRDVTKOclm73WSCCOdVO3TEgcBXuulZdwY6vZq64QowU5itlUvX7qaDr6peS7ekXC81
	Fiwfoq5W+ZY4kqUVdpCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMtCn-0006tV-Vt; Fri, 10 Apr 2020 12:56:21 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMtCk-0006t8-IX
 for linux-rockchip@lists.infradead.org; Fri, 10 Apr 2020 12:56:20 +0000
Received: by mail-qt1-x842.google.com with SMTP id q17so1047504qtp.4
 for <linux-rockchip@lists.infradead.org>; Fri, 10 Apr 2020 05:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=AjcjWk2f8HlNcIGTrrhNwnNBntj+RCGEbP7b5DX6NU4=;
 b=gFHM+raNbZhYXO/U/IxrMTF5eCHzkvwyHUw4WKSW63aD0zUuE36dZggxBoytNPc1/f
 v+fGcH4sx4i+nTTmdmNF03FrVpSxAqhwwnNe55kX4fTcD6sfhw9ExXSAo1csMpDq54ky
 R2uZuwAqnKKHcxLzhxjMuWIFWEmQbIYF05kcwxjxULsWsHRgMLXbHu8Jri9ADl5QqPlZ
 pjKU978lH/u/ekLMeNdH1D+LQXU4y1eJcMneU2VsiWpVIH1jW/t7iiF+nMFSHl5zkQV0
 ixtQFasRzVkeowxcdryVkDhDgeSMjHdsJDViuaXjEEoJohFzuuVV/8g6lRQoC8xv7Aqt
 SVFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AjcjWk2f8HlNcIGTrrhNwnNBntj+RCGEbP7b5DX6NU4=;
 b=SCDO+P3Wxb4KfY7JpRdfam8F0BEOOvYHSmkVEED97kcEMY8lNgyhuvAiGMikCjekB9
 5odZ/Fn0CpzPmZDTmt6te/Otdu6jMpQejcjZV35Xrrn/RbMk68gLfg1W3e3VMypIMXfe
 fbq85j+TtytdYwRHD02dyuilQsp0TN6lUvnHtXVngqHgyLTxm9nPXn1I+Chi0g2RXVVZ
 r3WGWQExC5Ckig2lUrhF03b2A8HrphfZcicp47ca19EaS46gbrnWqBfWwus7u9lBMGYZ
 60AksIO0asZ6mSSq0jupxNVbdPag9QtiLN8CWgmzLuAMNYmz67eV07bvzWDGBf1WoShR
 RU0g==
X-Gm-Message-State: AGi0PubsLR98ycubyXSsNUHAnc6ihQNT5oNKqUX8lqWC79793GXaRihY
 E//Hdk/AQ8uYmXQfx61LqdQRJ1vavYfsnMwnCRT/gcOWT2Q=
X-Google-Smtp-Source: APiQypJ8+AmayqoTB2jZC7Nr57LpgPiBwCaj80MFHYV0Ukjx98nK5VJOV8+vxa9+VeYhFmO/j3sTCRM8gf86X6aJTtE=
X-Received: by 2002:ac8:2939:: with SMTP id y54mr4200321qty.160.1586523376917; 
 Fri, 10 Apr 2020 05:56:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200329203349.GA15121@arya.arvanta.net>
 <20200410095719.GA914@arya.arvanta.net>
In-Reply-To: <20200410095719.GA914@arya.arvanta.net>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Fri, 10 Apr 2020 14:56:05 +0200
Message-ID: <CAFqH_53TsmtSFnUoWixsa4v6GvOi0Korv3p8BJfROhtW0Afw-Q@mail.gmail.com>
Subject: Re: PROBLEM: [drm:analogix_dp_bridge_atomic_enable [analogix_dp]]
 *ERROR* Failed to disable psr -110
To: =?UTF-8?Q?Milan_P=2E_Stani=C4=87?= <mps@arvanta.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_055618_635944_9A495A72 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eballetbo[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgTWlsYW4sCgpSaWdodCwgdGhpcyBpcyBhbiBhbm5veWluZyBpc3N1ZSBidXQgYWxzbyBrbm93
biwgdW5mb3J0dW5hdGVseSwgSQpwZXJzb25hbGx5IGRpZG4ndCBoYXZlIHRpbWUgdG8gbG9vayBh
dC4gYnV0IGl0IGlzIGluIG15IFRPRE8uCgpZb3UgY2FuIHRyeSB0byByZXZlcnQgdGhpcyBwYXRj
aAoKY29tbWl0IGQ0ZGE0ZTMzMzQxYzVlNjE1OTU0M2FjYzAzNTU5Y2IyNGY1MjBiYzIKQXV0aG9y
OiBTZWFuIFBhdWwgPHNlYW5wYXVsQGNocm9taXVtLm9yZz4KRGF0ZTogICBXZWQgU2VwIDE4IDE2
OjA3OjI5IDIwMTkgLTA0MDAKCiAgICBkcm06IE1lYXN1cmUgU2VsZiBSZWZyZXNoIEVudHJ5L0V4
aXQgdGltZXMgdG8gYXZvaWQgdGhyYXNoaW5nCgpTZWUgYWxzbyBzb21lIG1vcmUgaW5mbyBoZXJl
OgogKiAgaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvOS8xOC85NzUKCk5vdGUgdGhhdCByZXZl
cnRpbmcgdGhlIHBhdGNoIGRvZXNuJ3QgZml4ZXMgdGhlIGlzc3VlIGp1c3QgbWFrZXMgaXQKbGVz
cyB2aXNpYmxlLgoKQ2hlZXJzLAogRW5yaWMKCk1pc3NhdGdlIGRlIE1pbGFuIFAuIFN0YW5pxIcg
PG1wc0BhcnZhbnRhLm5ldD4gZGVsIGRpYSBkdi4sIDEwIGTigJlhYnIuCjIwMjAgYSBsZXMgMTE6
NTc6Cj4KPiBIZWxsbywKPgo+IERvZXMgYW55b25lIGhhdmUva25vdyBhbnl0aGluZyB3aGljaCBj
b3VsZCBoZWxwIHdpdGggdGhpcyBwcm9ibGVtIG9yCj4gcG9pbnQgbWUgd2hlcmUgSSBjYW4gbG9v
ayB0byBmaW5kIHNvbHV0aW9uIGZvciB0aGlzIHNlcmlvdXMgaXNzdWUuCj4KPiBUSUEKPgo+IE9u
IFN1biwgMjAyMC0wMy0yOSBhdCAyMjozMywgTWlsYW4gUC4gU3RhbmnEhyB3cm90ZToKPiA+IFsg
UGxlYXNlIGtlZXAgbWUgaW4gQ2MsIEknbSBub3Qgc3Vic2NyaWJlZCB0byB0aGlzIG1haWxpbmcg
bGlzdCBdCj4gPgo+ID4gWyBJIHBvc3RlZCB0aGlzIGJ1ZyByZXBvcnQgdG8gZHJpLWRldmVsQGZy
ZWVkZXNrdG9wLm9yZyBoZXJlOgo+ID4gICBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9h
cmNoaXZlcy9kcmktZGV2ZWwvMjAyMC1NYXJjaC8yNTk4MzIuaHRtbAo+ID4gICBvbiBUaHUgTWFy
IDE5IDIwOjAxOjE5IFVUQyAyMDIwIGJ1dCBkaWRuJ3QgcmVjZWl2ZWQgYW55IGFuc3dlci4gU28K
PiA+ICAgcmVwb3N0aW5nIGhlcmUgaW4gYSBob3BlIHRoYXQgc29tZW9uZSB3aWxsIGhlbHAgXQo+
ID4KPiA+IEhlbGxvLAo+ID4KPiA+IFRoaXMgaXMgb25lIG9mIGZpcnN0IGJ1ZyByZXBvcnQgdG8g
bGludXgga2VybmVsLCBzbyBzb3JyeSBpZiBJIGRvCj4gPiBzb21ldGhpbmcgd3Jvbmcgb3IgaW5h
cHByb3ByaWF0ZS4gQW5kIEknbSBzZWxmIHRhdWdodCBpbiBFbmdsaXNoIHNvCj4gPiBzb3JyeSBp
ZiBkbyBub3Qgd3JpdGUgb3IgZXhwcmVzcyBjb3JyZWN0bHkuCj4gPgo+ID4gSSdtIHJ1bm5pbmcg
bGludXggNS42LjAtcmMzIHdpdGhvdXQgYW55IHBhdGNoZXMgb24gU2Ftc3VuZyBjaHJvbWVib29r
Cj4gPiBvbmUgcGx1cywgQXJtNjQgcm9ja2NoaXAgcmszMzk5IGJhc2VkIG1vZGVsIG5hbWU6Cj4g
PiBNYWNoaW5lIG1vZGVsOiBHb29nbGUgS2V2aW4KPiA+Cj4gPiBJIGJ1aWxkIGtlcm5lbHMgZnJv
bSB1cHN0cmVhbSBnaXQua2VybmVsLm9yZyBmb3IgdGhpcyBtYWNoaW5lIGZvciBzb21lCj4gPiB0
aW1lIChpaXJjLCBmcm9tIDUuNC4xIGFuZCB1cCkgYnV0IEknbSBnZXR0aW5nIGVycm9yIG1lc3Nh
Z2VzIGluIGtlcm5lbAo+ID4gYWJvdXQgJ3BzcicgcmVsYXRlZCB0byBhbmFsb2dpeCBkcml2ZXIs
IHdoaWNoIEkgc2VlIHdpdGggYGRtZXNnYC4KPiA+Cj4gPiBUaGlzIGJ1ZyBhcHBlYXJzIGluIGBk
bWVzZ2Agb3V0cHV0IGZldyB0aW1lcyBvbiBhIGRheXMgYnV0IHJhbmRvbWx5IGFuZAo+ID4gSSBj
YW4ndCBmaW5kIGFueSBjb3JyZWxhdGlvbiBvZiB0aGUgd29yayB3aXRoIG1hY2hpbmUgYW5kIGFw
cGVhcmFuY2Ugb2YKPiA+IHRoaXMgYnVnLgo+ID4KPiA+IEkgaGF2ZSBubyBleHBlcmllbmNlIHdp
dGggd2l0aCB2aWRlbyBkcml2ZXJzIHNvIGRvbid0IGtub3cgaG93IHRvIGRlYnVnCj4gPiB0aGlz
IHByb2JsZW0gbW9yZSBkZWVwbHkuCj4gPgo+ID4gSSdtIGF0dGFjaGluZyBrZXJuZWwgLmNvbmZp
ZyAoZmlsZSBjb25maWctNS42LjAtcmMzLTEtZ3J1LmNvbmYpIHdoaWNoIEkKPiA+IHVzZSB0byBi
dWlsZCBrZXJuZWwsIG91dHB1dCBvZiB0aGUgYGF3ayAtZiBzY3JpcHRzL3Zlcl9saW51eGAgYXMg
ZmlsZQo+ID4gdmVyX2xpbnV4LnR4dCBhbmQgIG91dHB1dCBvZiBkbWVzZyBhcyBmaWxlIGRtZXNn
LWJyMy50eHQgKGZyb20gd2hpY2ggSQo+ID4gZGVsZXRlZCBvbmx5IHdpZmkgYXNzb2NpYXRpb24g
bG9nKS4KPiA+Cj4gPiBTb3JyeSBhZ2FpbiBpZiBJIGRpZCBzb21ldGhpbmcgYmFkIG9yIHdyb25n
IHdpdGggdGhpcyBidWcgcmVwb3J0Lgo+ID4KPiA+IEknbSByZWFkeSB0byBzZW5kIHlvdSBtb3Jl
IGRhdGEsIGFuZCBpbnZlc3RpZ2F0ZSB0aGlzIG1vcmUsIGFwcGx5Cj4gPiBwYXRjaGVzIGFuZCBy
ZWJ1aWxkIGtlcm5lbCBvciB3aGF0ZXZlciB5b3UgYXNrIG1lIChvZiBjb3Vyc2UgaWYgbXkKPiA+
IHVuZGVyc3RhbmRpbmcgYW5kIGtub3dsZWRnZSBpcyBlbm91Z2ggZm9yIHRoaXMgam9iKS4KPiA+
Cj4gPiBUaGFuayBpbiBhZHZhbmNlCj4gPgo+IFsuLi5dCj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
