Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4CB96FF6
	for <lists+linux-rockchip@lfdr.de>; Wed, 21 Aug 2019 05:01:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+vtpdOj46bJV3ZUEXiZTnHiuGXkci53PLwUetn3gKig=; b=BI1zRotLG55Ocw9QA6DHiPmGQ
	7Yobl9gUykulIdve7WzXtd3MZVd6L4g2Cy753p4U53s4BAvapQ9O3dT76W+iUv/Anb+FP3ljUcHc/
	vEtgp3ofGh1galwq9jPCJW7JMTMTTJZHZpCSbnBJqS/nBG5yEvtMIjMZVE3ELwNmMEsScydAkVjgz
	REcCOxuiY45BcUVd44to7mRlTsOTHCS/V7Hle1CGk7MueagoRbM13gP+68ZFXyyUNtVg/k5V0EBhK
	u7H9VFS3ohb5JYTVl615AslM4OS9+uP2Iwhf9yk5lwdRyIqbMN/ZIV4uU4c+dW0yHqJNce3klm+YY
	70Jzvj/fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0GsY-0003kO-9p; Wed, 21 Aug 2019 03:01:42 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0GsN-0003bz-W6; Wed, 21 Aug 2019 03:01:34 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.138])
 by regular1.263xmail.com (Postfix) with ESMTP id 16E01227;
 Wed, 21 Aug 2019 11:01:17 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31966T140494522795776S1566356475496741_; 
 Wed, 21 Aug 2019 11:01:16 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <0a04dc954f7ac39dac612a0572d74fc7>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-kernel@vger.kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH] ARM: dts: rockchip: remove rk3288 fennec board support
To: Heiko Stuebner <heiko@sntech.de>
References: <20190820100353.17728-1-kever.yang@rock-chips.com>
 <3270378.xvmEzLMrnJ@phil>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <5dfd9896-b8d2-abd0-93f4-8bcfc4331aa3@rock-chips.com>
Date: Wed, 21 Aug 2019 11:01:15 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3270378.xvmEzLMrnJ@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_200132_405862_5C629EF1 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.206 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvOC8yMCDkuIvljYg5OjU2LCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBIaSBLZXZl
ciwKPgo+IEFtIERpZW5zdGFnLCAyMC4gQXVndXN0IDIwMTksIDEyOjAzOjUyIENFU1Qgc2Nocmll
YiBLZXZlciBZYW5nOgo+PiBTaW5jZSB0aGVyZSBpcyBubyBvbmUgdXNpbmcgdGhpcyBib2FyZCwg
cmVtb3ZlIGl0Lgo+IHNvIGp1c3QgdG8gZWxhYm9yYXRlIGEgYml0LCBJIGd1ZXNzIHRoaXMgYm9h
cmQgd2FzIGludGVybmFsIHRvIFJvY2tjaGlwLAo+IG5ldmVyIHdlbnQgdG8gdGhlIG1hcmtldCBh
bmQgdGhlcmVmb3JlIGlzIG9ic29sZXRlIHdpdGhvdXQgYW55IHVzZXJzLAo+IHJpZ2h0PwoKClll
cywgZXZlbiBpZiB0aGVyZSBpcyBzb21lb25lIHVzaW5nIHRoaXMgYm9hcmQsIHRoZXkgZG9uJ3Qg
dXNlIHVwc3RyZWFtIApzb3VyY2UgY29kZSwgeW91IGNhbiBzZWUKCnRoZXJlIGlzIG9ubHkgb25l
IGNvbW1pdCByZWxhdGUgdG8gYm9hcmQgaXRzZWxmLCBidXQgbmV2ZXIgdXBkYXRlLiBTbyBJIAp3
b3VsZCBsaWtlIHRvIHJlbW92ZSBpdAoKZnJvbSBrZXJuZWwgYW5kIFUtQm9vdCB1cHN0cmVhbS4K
Cj4KPiBBbHNvIHdlIHNob3VsZCByZW1vdmUgdGhlIGJpbmRpbmcgIGZyb20KPiAJRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIGFzIHdlbGwKCldpbGwg
dXBkYXRlLgoKClRoYW5rcywKCi0gS2V2ZXIKCj4KPgo+IEhlaWtvCj4KPgo+PiBTaWduZWQtb2Zm
LWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgo+PiAtLS0KPj4KPj4g
ICBhcmNoL2FybS9ib290L2R0cy9yazMyODgtZmVubmVjLmR0cyB8IDM0NyAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDM0NyBkZWxldGlvbnMoLSkKPj4g
ICBkZWxldGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LWZlbm5lYy5kdHMK
Pj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC1mZW5uZWMuZHRzIGIv
YXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LWZlbm5lYy5kdHMKPj4gZGVsZXRlZCBmaWxlIG1vZGUg
MTAwNjQ0Cj4+IGluZGV4IDQ4NDdjZjkwMmExNS4uMDAwMDAwMDAwMDAwCj4+IC0tLSBhL2FyY2gv
YXJtL2Jvb3QvZHRzL3JrMzI4OC1mZW5uZWMuZHRzCj4+ICsrKyAvZGV2L251bGwKPj4gQEAgLTEs
MzQ3ICswLDAgQEAKPj4gLS8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1Ig
TUlUKQo+PiAtCj4+IC0vZHRzLXYxLzsKPj4gLQo+PiAtI2luY2x1ZGUgInJrMzI4OC5kdHNpIgo+
PiAtCj4+IC0vIHsKPj4gLQltb2RlbCA9ICJSb2NrY2hpcCBSSzMyODggRmVubmVjIEJvYXJkIjsK
Pj4gLQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzI4OC1mZW5uZWMiLCAicm9ja2NoaXAscmsz
Mjg4IjsKPj4gLQo+PiAtCW1lbW9yeUAwIHsKPj4gLQkJcmVnID0gPDB4MCAweDAgMHgwIDB4ODAw
MDAwMDA+Owo+PiAtCQlkZXZpY2VfdHlwZSA9ICJtZW1vcnkiOwo+PiAtCX07Cj4+IC0KPj4gLQll
eHRfZ21hYzogZXh0ZXJuYWwtZ21hYy1jbG9jayB7Cj4+IC0JCWNvbXBhdGlibGUgPSAiZml4ZWQt
Y2xvY2siOwo+PiAtCQkjY2xvY2stY2VsbHMgPSA8MD47Cj4+IC0JCWNsb2NrLWZyZXF1ZW5jeSA9
IDwxMjUwMDAwMDA+Owo+PiAtCQljbG9jay1vdXRwdXQtbmFtZXMgPSAiZXh0X2dtYWMiOwo+PiAt
CX07Cj4+IC0KPj4gLQl2Y2Nfc3lzOiB2c3lzLXJlZ3VsYXRvciB7Cj4+IC0JCWNvbXBhdGlibGUg
PSAicmVndWxhdG9yLWZpeGVkIjsKPj4gLQkJcmVndWxhdG9yLW5hbWUgPSAidmNjX3N5cyI7Cj4+
IC0JCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+PiAtCQlyZWd1bGF0b3It
bWF4LW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKPj4gLQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4g
LQkJcmVndWxhdG9yLWJvb3Qtb247Cj4+IC0JfTsKPj4gLX07Cj4+IC0KPj4gLSZjcHUwIHsKPj4g
LQljcHUwLXN1cHBseSA9IDwmdmRkX2NwdT47Cj4+IC19Owo+PiAtCj4+IC0mZW1tYyB7Cj4+IC0J
YnVzLXdpZHRoID0gPDg+Owo+PiAtCWNhcC1tbWMtaGlnaHNwZWVkOwo+PiAtCW5vbi1yZW1vdmFi
bGU7Cj4+IC0JcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gLQlwaW5jdHJsLTAgPSA8JmVt
bWNfY2xrICZlbW1jX2NtZCAmZW1tY19wd3IgJmVtbWNfYnVzOD47Cj4+IC0Jc3RhdHVzID0gIm9r
YXkiOwo+PiAtfTsKPj4gLQo+PiAtJmdtYWMgewo+PiAtCWFzc2lnbmVkLWNsb2NrcyA9IDwmY3J1
IFNDTEtfTUFDPjsKPj4gLQlhc3NpZ25lZC1jbG9jay1wYXJlbnRzID0gPCZleHRfZ21hYz47Cj4+
IC0JY2xvY2tfaW5fb3V0ID0gImlucHV0IjsKPj4gLQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQi
Owo+PiAtCXBpbmN0cmwtMCA9IDwmcmdtaWlfcGlucz4sIDwmcGh5X3JzdD4sIDwmcGh5X3BtZWI+
LCA8JnBoeV9pbnQ+Owo+PiAtCXBoeS1zdXBwbHkgPSA8JnZjY19sYW4+Owo+PiAtCXBoeS1tb2Rl
ID0gInJnbWlpIjsKPj4gLQlzbnBzLHJlc2V0LWFjdGl2ZS1sb3c7Cj4+IC0Jc25wcyxyZXNldC1k
ZWxheXMtdXMgPSA8MCAxMDAwMCAxMDAwMDAwPjsKPj4gLQlzbnBzLHJlc2V0LWdwaW8gPSA8Jmdw
aW80IFJLX1BCMCBHUElPX0FDVElWRV9MT1c+Owo+PiAtCXR4X2RlbGF5ID0gPDB4MzA+Owo+PiAt
CXJ4X2RlbGF5ID0gPDB4MTA+Owo+PiAtCXN0YXR1cyA9ICJva2F5IjsKPj4gLX07Cj4+IC0KPj4g
LSZncHUgewo+PiAtCW1hbGktc3VwcGx5ID0gPCZ2ZGRfZ3B1PjsKPj4gLQlzdGF0dXMgPSAib2th
eSI7Cj4+IC19Owo+PiAtCj4+IC0maGRtaSB7Cj4+IC0Jc3RhdHVzID0gIm9rYXkiOwo+PiAtfTsK
Pj4gLQo+PiAtJmkyYzAgewo+PiAtCXN0YXR1cyA9ICJva2F5IjsKPj4gLQljbG9jay1mcmVxdWVu
Y3kgPSA8NDAwMDAwPjsKPj4gLQo+PiAtCXJrODA4OiBwbWljQDFiIHsKPj4gLQkJY29tcGF0aWJs
ZSA9ICJyb2NrY2hpcCxyazgwOCI7Cj4+IC0JCXJlZyA9IDwweDFiPjsKPj4gLQkJaW50ZXJydXB0
LXBhcmVudCA9IDwmZ3BpbzA+Owo+PiAtCQlpbnRlcnJ1cHRzID0gPFJLX1BBNCBJUlFfVFlQRV9M
RVZFTF9MT1c+Owo+PiAtCQkjY2xvY2stY2VsbHMgPSA8MT47Cj4+IC0JCWNsb2NrLW91dHB1dC1u
YW1lcyA9ICJ4aW4zMmsiLCAicms4MDgtY2xrb3V0MiI7Cj4+IC0JCXBpbmN0cmwtbmFtZXMgPSAi
ZGVmYXVsdCI7Cj4+IC0JCXBpbmN0cmwtMCA9IDwmcG1pY19pbnQgJmdsb2JhbF9wd3JvZmY+Owo+
PiAtCQlyb2NrY2hpcCxzeXN0ZW0tcG93ZXItY29udHJvbGxlcjsKPj4gLQkJd2FrZXVwLXNvdXJj
ZTsKPj4gLQo+PiAtCQl2Y2MxLXN1cHBseSA9IDwmdmNjX3N5cz47Cj4+IC0JCXZjYzItc3VwcGx5
ID0gPCZ2Y2Nfc3lzPjsKPj4gLQkJdmNjMy1zdXBwbHkgPSA8JnZjY19zeXM+Owo+PiAtCQl2Y2M0
LXN1cHBseSA9IDwmdmNjX3N5cz47Cj4+IC0JCXZjYzYtc3VwcGx5ID0gPCZ2Y2Nfc3lzPjsKPj4g
LQkJdmNjNy1zdXBwbHkgPSA8JnZjY19zeXM+Owo+PiAtCQl2Y2M4LXN1cHBseSA9IDwmdmNjX2lv
PjsKPj4gLQkJdmNjOS1zdXBwbHkgPSA8JnZjY19pbz47Cj4+IC0JCXZjYzEwLXN1cHBseSA9IDwm
dmNjX2lvPjsKPj4gLQkJdmNjMTEtc3VwcGx5ID0gPCZ2Y2NfaW8+Owo+PiAtCQl2Y2MxMi1zdXBw
bHkgPSA8JnZjY19pbz47Cj4+IC0JCXZkZGlvLXN1cHBseSA9IDwmdmNjX2lvPjsKPj4gLQo+PiAt
CQlyZWd1bGF0b3JzIHsKPj4gLQkJCXZkZF9jcHU6IERDRENfUkVHMSB7Cj4+IC0JCQkJcmVndWxh
dG9yLWFsd2F5cy1vbjsKPj4gLQkJCQlyZWd1bGF0b3ItYm9vdC1vbjsKPj4gLQkJCQlyZWd1bGF0
b3ItbWluLW1pY3Jvdm9sdCA9IDw3NTAwMDA+Owo+PiAtCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92
b2x0ID0gPDEzNTAwMDA+Owo+PiAtCQkJCXJlZ3VsYXRvci1uYW1lID0gInZkZF9hcm0iOwo+PiAt
CQkJCXJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+PiAtCQkJCQlyZWd1bGF0b3Itb2ZmLWluLXN1c3Bl
bmQ7Cj4+IC0JCQkJfTsKPj4gLQkJCX07Cj4+IC0KPj4gLQkJCXZkZF9ncHU6IERDRENfUkVHMiB7
Cj4+IC0JCQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4gLQkJCQlyZWd1bGF0b3ItYm9vdC1vbjsK
Pj4gLQkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw4NTAwMDA+Owo+PiAtCQkJCXJlZ3Vs
YXRvci1tYXgtbWljcm92b2x0ID0gPDEyNTAwMDA+Owo+PiAtCQkJCXJlZ3VsYXRvci1uYW1lID0g
InZkZF9ncHUiOwo+PiAtCQkJCXJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+PiAtCQkJCQlyZWd1bGF0
b3Itb24taW4tc3VzcGVuZDsKPj4gLQkJCQkJcmVndWxhdG9yLXN1c3BlbmQtbWljcm92b2x0ID0g
PDEwMDAwMDA+Owo+PiAtCQkJCX07Cj4+IC0JCQl9Owo+PiAtCj4+IC0JCQl2Y2NfZGRyOiBEQ0RD
X1JFRzMgewo+PiAtCQkJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4+IC0JCQkJcmVndWxhdG9yLWJv
b3Qtb247Cj4+IC0JCQkJcmVndWxhdG9yLW5hbWUgPSAidmNjX2RkciI7Cj4+IC0JCQkJcmVndWxh
dG9yLXN0YXRlLW1lbSB7Cj4+IC0JCQkJCXJlZ3VsYXRvci1vbi1pbi1zdXNwZW5kOwo+PiAtCQkJ
CX07Cj4+IC0JCQl9Owo+PiAtCj4+IC0JCQl2Y2NfaW86IERDRENfUkVHNCB7Cj4+IC0JCQkJcmVn
dWxhdG9yLWFsd2F5cy1vbjsKPj4gLQkJCQlyZWd1bGF0b3ItYm9vdC1vbjsKPj4gLQkJCQlyZWd1
bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPj4gLQkJCQlyZWd1bGF0b3ItbWF4LW1p
Y3Jvdm9sdCA9IDwzMzAwMDAwPjsKPj4gLQkJCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2NfaW8iOwo+
PiAtCQkJCXJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+PiAtCQkJCQlyZWd1bGF0b3Itb24taW4tc3Vz
cGVuZDsKPj4gLQkJCQkJcmVndWxhdG9yLXN1c3BlbmQtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+
PiAtCQkJCX07Cj4+IC0JCQl9Owo+PiAtCj4+IC0JCQl2Y2Npb19wbXU6IExET19SRUcxIHsKPj4g
LQkJCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+PiAtCQkJCXJlZ3VsYXRvci1ib290LW9uOwo+PiAt
CQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+PiAtCQkJCXJlZ3VsYXRv
ci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+PiAtCQkJCXJlZ3VsYXRvci1uYW1lID0gInZj
Y2lvX3BtdSI7Cj4+IC0JCQkJcmVndWxhdG9yLXN0YXRlLW1lbSB7Cj4+IC0JCQkJCXJlZ3VsYXRv
ci1vbi1pbi1zdXNwZW5kOwo+PiAtCQkJCQlyZWd1bGF0b3Itc3VzcGVuZC1taWNyb3ZvbHQgPSA8
MzMwMDAwMD47Cj4+IC0JCQkJfTsKPj4gLQkJCX07Cj4+IC0KPj4gLQkJCXZjY2FfMzM6IExET19S
RUcyIHsKPj4gLQkJCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+PiAtCQkJCXJlZ3VsYXRvci1ib290
LW9uOwo+PiAtCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+PiAtCQkJ
CXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+PiAtCQkJCXJlZ3VsYXRvci1u
YW1lID0gInZjY2FfMzMiOwo+PiAtCQkJCXJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+PiAtCQkJCQly
ZWd1bGF0b3Itb2ZmLWluLXN1c3BlbmQ7Cj4+IC0JCQkJfTsKPj4gLQkJCX07Cj4+IC0KPj4gLQkJ
CXZkZF8xMDogTERPX1JFRzMgewo+PiAtCQkJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4+IC0JCQkJ
cmVndWxhdG9yLWJvb3Qtb247Cj4+IC0JCQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTAw
MDAwMD47Cj4+IC0JCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTAwMDAwMD47Cj4+IC0J
CQkJcmVndWxhdG9yLW5hbWUgPSAidmRkXzEwIjsKPj4gLQkJCQlyZWd1bGF0b3Itc3RhdGUtbWVt
IHsKPj4gLQkJCQkJcmVndWxhdG9yLW9uLWluLXN1c3BlbmQ7Cj4+IC0JCQkJCXJlZ3VsYXRvci1z
dXNwZW5kLW1pY3Jvdm9sdCA9IDwxMDAwMDAwPjsKPj4gLQkJCQl9Owo+PiAtCQkJfTsKPj4gLQo+
PiAtCQkJdmNjX3dsOiBMRE9fUkVHNCB7Cj4+IC0JCQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4g
LQkJCQlyZWd1bGF0b3ItYm9vdC1vbjsKPj4gLQkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9
IDwxODAwMDAwPjsKPj4gLQkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsK
Pj4gLQkJCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2Nfd2wiOwo+PiAtCQkJCXJlZ3VsYXRvci1zdGF0
ZS1tZW0gewo+PiAtCQkJCQlyZWd1bGF0b3Itb24taW4tc3VzcGVuZDsKPj4gLQkJCQkJcmVndWxh
dG9yLXN1c3BlbmQtbWljcm92b2x0ID0gPDE4MDAwMDA+Owo+PiAtCQkJCX07Cj4+IC0JCQl9Owo+
PiAtCj4+IC0JCQl2Y2Npb19zZDogTERPX1JFRzUgewo+PiAtCQkJCXJlZ3VsYXRvci1hbHdheXMt
b247Cj4+IC0JCQkJcmVndWxhdG9yLWJvb3Qtb247Cj4+IC0JCQkJcmVndWxhdG9yLW1pbi1taWNy
b3ZvbHQgPSA8MTgwMDAwMD47Cj4+IC0JCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzMw
MDAwMD47Cj4+IC0JCQkJcmVndWxhdG9yLW5hbWUgPSAidmNjaW9fc2QiOwo+PiAtCQkJCXJlZ3Vs
YXRvci1zdGF0ZS1tZW0gewo+PiAtCQkJCQlyZWd1bGF0b3Itb24taW4tc3VzcGVuZDsKPj4gLQkJ
CQkJcmVndWxhdG9yLXN1c3BlbmQtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+PiAtCQkJCX07Cj4+
IC0JCQl9Owo+PiAtCj4+IC0JCQl2ZGQxMF9sY2Q6IExET19SRUc2IHsKPj4gLQkJCQlyZWd1bGF0
b3ItYWx3YXlzLW9uOwo+PiAtCQkJCXJlZ3VsYXRvci1ib290LW9uOwo+PiAtCQkJCXJlZ3VsYXRv
ci1taW4tbWljcm92b2x0ID0gPDEwMDAwMDA+Owo+PiAtCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92
b2x0ID0gPDEwMDAwMDA+Owo+PiAtCQkJCXJlZ3VsYXRvci1uYW1lID0gInZkZDEwX2xjZCI7Cj4+
IC0JCQkJcmVndWxhdG9yLXN0YXRlLW1lbSB7Cj4+IC0JCQkJCXJlZ3VsYXRvci1vbi1pbi1zdXNw
ZW5kOwo+PiAtCQkJCQlyZWd1bGF0b3Itc3VzcGVuZC1taWNyb3ZvbHQgPSA8MTAwMDAwMD47Cj4+
IC0JCQkJfTsKPj4gLQkJCX07Cj4+IC0KPj4gLQkJCXZjY18xODogTERPX1JFRzcgewo+PiAtCQkJ
CXJlZ3VsYXRvci1hbHdheXMtb247Cj4+IC0JCQkJcmVndWxhdG9yLWJvb3Qtb247Cj4+IC0JCQkJ
cmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4+IC0JCQkJcmVndWxhdG9yLW1h
eC1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4+IC0JCQkJcmVndWxhdG9yLW5hbWUgPSAidmNjXzE4
IjsKPj4gLQkJCQlyZWd1bGF0b3Itc3RhdGUtbWVtIHsKPj4gLQkJCQkJcmVndWxhdG9yLW9uLWlu
LXN1c3BlbmQ7Cj4+IC0JCQkJCXJlZ3VsYXRvci1zdXNwZW5kLW1pY3Jvdm9sdCA9IDwxODAwMDAw
PjsKPj4gLQkJCQl9Owo+PiAtCQkJfTsKPj4gLQo+PiAtCQkJdmNjMThfbGNkOiBMRE9fUkVHOCB7
Cj4+IC0JCQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4gLQkJCQlyZWd1bGF0b3ItYm9vdC1vbjsK
Pj4gLQkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKPj4gLQkJCQlyZWd1
bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKPj4gLQkJCQlyZWd1bGF0b3ItbmFtZSA9
ICJ2Y2MxOF9sY2QiOwo+PiAtCQkJCXJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+PiAtCQkJCQlyZWd1
bGF0b3Itb24taW4tc3VzcGVuZDsKPj4gLQkJCQkJcmVndWxhdG9yLXN1c3BlbmQtbWljcm92b2x0
ID0gPDE4MDAwMDA+Owo+PiAtCQkJCX07Cj4+IC0JCQl9Owo+PiAtCj4+IC0JCQl2Y2Nfc2Q6IFNX
SVRDSF9SRUcxIHsKPj4gLQkJCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+PiAtCQkJCXJlZ3VsYXRv
ci1ib290LW9uOwo+PiAtCQkJCXJlZ3VsYXRvci1uYW1lID0gInZjY19zZCI7Cj4+IC0JCQkJcmVn
dWxhdG9yLXN0YXRlLW1lbSB7Cj4+IC0JCQkJCXJlZ3VsYXRvci1vbi1pbi1zdXNwZW5kOwo+PiAt
CQkJCX07Cj4+IC0JCQl9Owo+PiAtCj4+IC0JCQl2Y2NfbGFuOiBTV0lUQ0hfUkVHMiB7Cj4+IC0J
CQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4gLQkJCQlyZWd1bGF0b3ItYm9vdC1vbjsKPj4gLQkJ
CQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2NfbGFuIjsKPj4gLQkJCQlyZWd1bGF0b3Itc3RhdGUtbWVt
IHsKPj4gLQkJCQkJcmVndWxhdG9yLW9uLWluLXN1c3BlbmQ7Cj4+IC0JCQkJfTsKPj4gLQkJCX07
Cj4+IC0JCX07Cj4+IC0JfTsKPj4gLX07Cj4+IC0KPj4gLSZwaW5jdHJsIHsKPj4gLQlwY2ZnX291
dHB1dF9oaWdoOiBwY2ZnLW91dHB1dC1oaWdoIHsKPj4gLQkJb3V0cHV0LWhpZ2g7Cj4+IC0JfTsK
Pj4gLQo+PiAtCXBjZmdfb3V0cHV0X2xvdzogcGNmZy1vdXRwdXQtbG93IHsKPj4gLQkJb3V0cHV0
LWxvdzsKPj4gLQl9Owo+PiAtCj4+IC0JcGNmZ19wdWxsX25vbmVfZHJ2XzhtYTogcGNmZy1wdWxs
LW5vbmUtZHJ2LThtYSB7Cj4+IC0JCWRyaXZlLXN0cmVuZ3RoID0gPDg+Owo+PiAtCX07Cj4+IC0K
Pj4gLQlwY2ZnX3B1bGxfdXBfZHJ2XzhtYTogcGNmZy1wdWxsLXVwLWRydi04bWEgewo+PiAtCQli
aWFzLXB1bGwtdXA7Cj4+IC0JCWRyaXZlLXN0cmVuZ3RoID0gPDg+Owo+PiAtCX07Cj4+IC0KPj4g
LQlnbWFjIHsKPj4gLQkJcGh5X2ludDogcGh5LWludCB7Cj4+IC0JCQlyb2NrY2hpcCxwaW5zID0g
PDAgUktfUEIxIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsKPj4gLQkJfTsKPj4gLQo+PiAt
CQlwaHlfcG1lYjogcGh5LXBtZWIgewo+PiAtCQkJcm9ja2NoaXAscGlucyA9IDwwIFJLX1BCMCBS
S19GVU5DX0dQSU8gJnBjZmdfcHVsbF91cD47Cj4+IC0JCX07Cj4+IC0KPj4gLQkJcGh5X3JzdDog
cGh5LXJzdCB7Cj4+IC0JCQlyb2NrY2hpcCxwaW5zID0gPDQgUktfUEIwIFJLX0ZVTkNfR1BJTyAm
cGNmZ19vdXRwdXRfaGlnaD47Cj4+IC0JCX07Cj4+IC0JfTsKPj4gLQo+PiAtCXBtaWMgewo+PiAt
CQlwbWljX2ludDogcG1pYy1pbnQgewo+PiAtCQkJcm9ja2NoaXAscGlucyA9IDwwIFJLX1BBNCBS
S19GVU5DX0dQSU8gJnBjZmdfcHVsbF91cD47Cj4+IC0JCX07Cj4+IC0JfTsKPj4gLQo+PiAtCXVz
YnBoeSB7Cj4+IC0JCWhvc3RfZHJ2OiBob3N0LWRydiB7Cj4+IC0JCQlyb2NrY2hpcCxwaW5zID0g
PDAgUktfUEI2IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+PiAtCQl9Owo+PiAtCX07
Cj4+IC19Owo+PiAtCj4+IC0mdWFydDIgewo+PiAtCXN0YXR1cyA9ICJva2F5IjsKPj4gLX07Cj4+
IC0KPj4gLSZ1c2JwaHkgewo+PiAtCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+IC0JcGlu
Y3RybC0wID0gPCZob3N0X2Rydj47Cj4+IC0JdmJ1c19kcnYtZ3Bpb3MgPSA8JmdwaW8wIFJLX1BC
NiBHUElPX0FDVElWRV9ISUdIPjsKPj4gLQlzdGF0dXMgPSAib2theSI7Cj4+IC19Owo+PiAtCj4+
IC0mdXNiX2hvc3QwX2VoY2kgewo+PiAtCXN0YXR1cyA9ICJva2F5IjsKPj4gLX07Cj4+IC0KPj4g
LSZ1c2JfaG9zdDEgewo+PiAtCXN0YXR1cyA9ICJva2F5IjsKPj4gLX07Cj4+IC0KPj4gLSZ1c2Jf
b3RnIHsKPj4gLQlzdGF0dXMgPSAib2theSI7Cj4+IC19Owo+PiAtCj4+IC0mdXNiX2hzaWMgewo+
PiAtCXN0YXR1cyA9ICJva2F5IjsKPj4gLX07Cj4+IC0KPj4gLSZ2b3BiIHsKPj4gLQlzdGF0dXMg
PSAib2theSI7Cj4+IC19Owo+PiAtCj4+IC0mdm9wYl9tbXUgewo+PiAtCXN0YXR1cyA9ICJva2F5
IjsKPj4gLX07Cj4+IC0KPj4gLSZ2b3BsIHsKPj4gLQlzdGF0dXMgPSAib2theSI7Cj4+IC19Owo+
PiAtCj4+IC0mdm9wbF9tbXUgewo+PiAtCXN0YXR1cyA9ICJva2F5IjsKPj4gLX07Cj4+Cj4KPgo+
Cj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
