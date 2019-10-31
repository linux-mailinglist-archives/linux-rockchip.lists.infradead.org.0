Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBDDEB451
	for <lists+linux-rockchip@lfdr.de>; Thu, 31 Oct 2019 16:56:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=exr6Tq7b5PlEYnK2pUHuTF9r4wq9fzdzwWoR+jCYkZo=; b=TmXSDDiwc4JHDh
	FgpF4bZ7IeuY81+6mqBKQGrIk9/olDHPq/B0XqCPxIJSEehEWSNWoxIDERVCuXQtyw2tGrLAPrdE5
	70/yh9r3CeC+DZTjCeYhdPkGtJFKwG9v5MUnYLE9PZupzzKw8tuYtp8GW3jlqBSPjxXdbmMy05nmz
	RAiwAe3oy7pTNjQzAvyHxFYijwQr5NimFPctnrXdw2v7PJdY7/7+NgWsrQ9f4cRl5DoiAYIjJgHgk
	g1xQNtjNDz9i9TCEqHopDtDwmUSJRkFwp+hvdfVYG9kcJQn+oOQ/6V8Raumw+fhh67SrT2eU7n3O7
	UrP4k4Ehfj93bEWMBT4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQCoZ-0002vC-Eg; Thu, 31 Oct 2019 15:56:47 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQCoU-0002uI-U1; Thu, 31 Oct 2019 15:56:44 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1iQCoO-0004RM-1y; Thu, 31 Oct 2019 16:56:36 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de
 [80.152.217.152]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 x9VFuVLG025660
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Thu, 31 Oct 2019 16:56:31 +0100
Subject: Re: [PATCH] arm64: dts: rockchip: Rework voltage supplies for
 regulators on rk3399-roc-pc
To: Heiko Stuebner <heiko@sntech.de>
References: <22b56700-3c9e-0f60-cd74-7ff24d4f1a23@fivetechno.de>
 <2490751.hSll4LLrj9@phil>
From: Markus Reichl <m.reichl@fivetechno.de>
Autocrypt: addr=m.reichl@fivetechno.de; prefer-encrypt=mutual; keydata=
 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
 eD/Xv4SsK2JTO4nkQYw8
Organization: five technologies GmbH
Message-ID: <3d9bb8bb-eb4a-1bf4-bbfb-f48da4e97083@fivetechno.de>
Date: Thu, 31 Oct 2019 16:56:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <2490751.hSll4LLrj9@phil>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1572537402;
 24615748; 
X-HE-SMSGID: 1iQCoO-0004RM-1y
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_085643_112270_792A31F1 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

QW0gMzEuMTAuMTkgdW0gMTU6MjQgc2NocmllYiBIZWlrbyBTdHVlYm5lcjoKPiBBbSBEb25uZXJz
dGFnLCAzMS4gT2t0b2JlciAyMDE5LCAxNDozMDowNiBDRVQgc2NocmllYiBNYXJrdXMgUmVpY2hs
Ogo+PiBDb3JyZWN0IHRoZSB2b2x0YWdlIHN1cHBsaWVzIGFjY29yZGluZyB0byB0aGUgYm9hcmQg
c2NoZW1hdGljcwo+PiBST0MtMzM5OS1QQy1WMTAtQS0yMDE4MDgwNC4KPj4gCj4+IFNpZ25lZC1v
ZmYtYnk6IE1hcmt1cyBSZWljaGwgPG0ucmVpY2hsQGZpdmV0ZWNobm8uZGU+Cj4+IC0tLQo+PiAg
Li4uL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMuZHRzIHwgMzAgKysrKysr
KysrKy0tLS0tLS0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDE0IGRl
bGV0aW9ucygtKQo+PiAKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LXJvYy1wYy5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1yb2MtcGMuZHRzCj4+IGluZGV4IGUwNmU0MTYzNjA1Yi4uZGVmOGJjYTdkMTU4IDEwMDY0NAo+
PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMuZHRzCj4+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvYy1wYy5kdHMKPj4g
QEAgLTE0Miw3ICsxNDIsNyBAQAo+PiAgCQlyZWd1bGF0b3ItYm9vdC1vbjsKPj4gIAkJcmVndWxh
dG9yLW1pbi1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4+ICAJCXJlZ3VsYXRvci1tYXgtbWljcm92
b2x0ID0gPDMzMDAwMDA+Owo+PiAtCQl2aW4tc3VwcGx5ID0gPCZ2Y2Nfc3lzPjsKPj4gKwkJdmlu
LXN1cHBseSA9IDwmZGNfMTJ2PjsKPj4gIAl9Owo+PiAgCj4+ICAJLyogQWN0dWFsbHkgMyByZWd1
bGF0b3JzIChob3N0MCwgMSwgMikgY29udHJvbGxlZCBieSB0aGUgc2FtZSBncGlvICovCj4+IEBA
IC0xOTAsNyArMTkwLDcgQEAKPj4gIAkJcmVndWxhdG9yLWJvb3Qtb247Cj4+ICAJCXJlZ3VsYXRv
ci1taW4tbWljcm92b2x0ID0gPDgwMDAwMD47Cj4+ICAJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0
ID0gPDE0MDAwMDA+Owo+PiAtCQl2aW4tc3VwcGx5ID0gPCZ2Y2Nfc3lzPjsKPj4gKwkJdmluLXN1
cHBseSA9IDwmdmNjM3YzX3N5cz47Cj4+ICAJfTsKPj4gIAo+PiAgCS8qIG9uIHJvYy1yazMzOTkt
bWV6emFuaW5lIGJvYXJkICovCj4gCj4gVGhpcyBzZWVtcyB0byBiZSBzb21lIGNoYW5nZSBmcm9t
IHNvbWV3aGVyZSBlbHNlLgo+IEluIGFueSBjYXNlIEkgYWRhcHRlZCB0aGF0IHRvIHRoZSBjdXJy
ZW50IGR0cyBhbmQgYXBwbGllZAo+IHRoZSBwYXRjaCBmb3IgNS41LiBQbGVhc2UgZG91YmxlLWNo
ZWNrIHRob3VnaC4KClllcyB0aGlzIGNvbWVzIGZyb206CgoiYXJtNjQ6IGR0czogcm9ja2NoaXA6
IEFkZCBQQ0llIG5vZGUgb24gcmszMzk5LXJvYy1wYyIKCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5l
bC5vcmcvcGF0Y2gvMTEyMTU2NTkvCgo+IAo+IFRoYW5rcwo+IEhlaWtvCj4gCj4gCj4gCj4gCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo+IAoKR3J1w58sCi0tIApNYXJrdXMgUmVpY2hsCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
