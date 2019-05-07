Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0154E15D83
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 08:35:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IrGK+AOaA9lPrtltqlYaFMutG7be86dW6yTjIIX+LRc=; b=JucR43xnnon+SF
	fLgCzyTwe7HemK3cH3hgewa46vCVG5VJu07PaBvWmedC0d91qwtJ4emZW8FN0s/RPOBD8PpT7FR74
	Zg5gkCilsZ5vQSu7yyx1nU0iJi6mDJVP9jxigRY0cn+KRIgRl/rZOrJ8AoHwiWYBU8k/2AOwwG0Ns
	7RwoQqiCEXtIdDrvXBwnhqrSx6szVHv3+T06c6bWuVw61kS77be1iiLLroW369kw4riU0fgJbzU/k
	JV0ylIKGaL6+Y5MtWOIAgs4EO6FAeQKt+Qh9L4uTiFafvldwDcqAWH8V1tVWK0WqElSbgBOTibvlt
	Jc0D6ovNJJfK1kkpG5hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNthO-0001dl-Kh; Tue, 07 May 2019 06:35:34 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtgf-00080E-PU
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 06:35:06 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.177])
 by regular1.263xmail.com (Postfix) with ESMTP id 634F37F0;
 Tue,  7 May 2019 14:34:42 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.214] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P22491T140245750236928S1557210880454232_; 
 Tue, 07 May 2019 14:34:41 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <5239cae944c871ded069028e58bdc99c>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 7/9] Makefile.spl: Create u-boot-spl-rockchip.bin for
 rk3399
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Akash Gajjar <akash@openedev.com>, Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20190428090913.10568-1-jagan@amarulasolutions.com>
 <20190428090913.10568-8-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <52ca4f72-fa9c-487a-eb10-a509b5e72539@rock-chips.com>
Date: Tue, 7 May 2019 14:34:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190428090913.10568-8-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_233450_938178_1926B94D 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 u-boot@lists.denx.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSmFnYW4sCgpPbiAwNC8yOC8yMDE5IDA1OjA5IFBNLCBKYWdhbiBUZWtpIHdyb3RlOgo+IFJv
Y2tjaGlwIHBsYXRmb3JtIHdvdWxkIHJlcXVpcmUgYW4gZXhwbGljaXQgY2FsbCB0byBta2ltYWdl
IGZvcgo+IGNyZWF0aW5nIGJvb3RhYmxlIGltYWdlcyB3aGljaCBpbmRlZWQgc3BlY2lmaWMgdG8g
U29DIGZhbWlseQo+IGFsb25nIHdpdGggYm9vdCBkZXZpY2VzLgo+Cj4gRXhhbXBsZSBvZiBjcmVh
dGluZyBib290YWJsZSBpbWFnZSBmb3IgcmszMzk5IGZhbWlseSB3aXRoIFNECj4gYm9vdCBkZXZp
Y2UgYXMKPgo+IOKCuSBta2ltYWdlIC1uIHJrMzM5OSAtVCBya3NkIC1kIC4vc3BsL3UtYm9vdC1z
cGwtZHRiLmJpbiB1LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbgo+Cj4gVGhpcyBwYXRjaCB3b3VsZCBk
byB0aGUgc2FtZSB0aGluayB2aWEgTWFrZWZpbGUuc3BsIGZvciByazMzOTkuCj4KPiBUaGlzIHdv
dWxkIGJlIGFuIGluaXRpYWwgdmVyc2lvbiBhbmQgaXQgY2FuIGVhc2lseSBleHBhbmQgZnVydGhl
ciB0byBzdXBwb3J0Cj4gb3RoZXIgZmFtaWxpZXMgb2YgU29DJ3Mgd2l0aCB2YXJpZXR5IG9mIGJv
b3Qgc3RhZ2VzIGxpa2UgVFBMLCBTUEwuCgrCoMKgwqAgcmszMzk5IG1heSBoYXZlIFRQTCBsaWtl
IG90aGVyIFNvQ3MsIGZvciB0aGVyZSB3aWxsIGJlIGltYWdlIHR5cGVzOgoKU1BMK3UtYm9vdC5i
aW4KClNQTCt1LWJvb3QuaXRiCgpUUEwrU1BMK3UtYm9vdC5pdGIKClNlZW1zIHRoaXMgcGF0Y2gg
YW5kIDkvOSBvZiB0aGlzIHBhdGNoIHNldCBvbmx5IGNvdmVyIFNQTCt1LWJvb3QuaXRiPwoKSXMg
aXQgcG9zc2libGUgdG8gbWFrZSBpdCBtb3JlIGdlbmVyaWM/CgoKVGhhbmtzLAoKLSBLZXZlcgoK
Pgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29t
Pgo+IC0tLQo+ICBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL0tjb25maWcgfCAgOCArKysrKysrKwo+
ICBkb2MvUkVBRE1FLnJvY2tjaGlwICAgICAgICAgICAgfCAgMyArLS0KPiAgc2NyaXB0cy9NYWtl
ZmlsZS5zcGwgICAgICAgICAgIHwgMjEgKysrKysrKysrKysrKysrKysrKysrCj4gIDMgZmlsZXMg
Y2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQg
YS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL0tjb25maWcgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlw
L0tjb25maWcKPiBpbmRleCBkYmU3ZjExZDM5Li4yODZjODcwMTM1IDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtL21hY2gtcm9ja2NoaXAvS2NvbmZpZwo+ICsrKyBiL2FyY2gvYXJtL21hY2gtcm9ja2No
aXAvS2NvbmZpZwo+IEBAIC0yMjIsNiArMjIyLDE0IEBAIGNvbmZpZyBST0NLQ0hJUF9TUExfUkVT
RVJWRV9JUkFNCj4gIGNvbmZpZyBST0NLQ0hJUF9CUk9NX0hFTFBFUgo+ICAJYm9vbAo+ICAKPiAr
Y29uZmlnIFNQTF9ST0NLQ0hJUF9JTUdfTkFNRQo+ICsJc3RyaW5nICJTUEwgUm9ja2NoaXAgaW1h
Z2UgbmFtZSIKPiArCWRlZmF1bHQgInJrMzM5OSIgaWYgUk9DS0NISVBfUkszMzk5Cj4gKwloZWxw
Cj4gKwkgIFRvIGNyZWF0ZSBTUEwgaW1hZ2UgZm9yIHJvY2tjaGlwIHRhcmdldHMgdGhlIGltYWdl
IG5hbWUgd291bGQKPiArCSAgZGVwZW5kcyBvbiB0aGUgU29DIGZhbWlseSB0aGF0IHdvdWxkIHBh
c3MgYXMgYW4gYXJndW1lbnQgYXMKPiArCSAgJy1uIHJrMzM5OScgdG8gbWtpbWFnZSBmb3IgY3Jl
YXRpbmcgUm9ja2NoaXAgU1BMIGJvb3QgaW1hZ2UuCj4gKwo+ICBjb25maWcgU1BMX1JPQ0tDSElQ
X0VBUkxZUkVUVVJOX1RPX0JST00KPiAgICAgICAgICBib29sICJTUEwgcmVxdWlyZXMgZWFybHkt
cmV0dXJuIChmb3IgUkszMTg4LXN0eWxlIEJST00pIHRvIEJST00iCj4gIAlkZXBlbmRzIG9uIFNQ
TCAmJiBFTkFCTEVfQVJNX1NPQ19CT09UMF9IT09LCj4gZGlmZiAtLWdpdCBhL2RvYy9SRUFETUUu
cm9ja2NoaXAgYi9kb2MvUkVBRE1FLnJvY2tjaGlwCj4gaW5kZXggYzRlNWY4M2RhNy4uY2NiYWFh
YTlhNyAxMDA2NDQKPiAtLS0gYS9kb2MvUkVBRE1FLnJvY2tjaGlwCj4gKysrIGIvZG9jL1JFQURN
RS5yb2NrY2hpcAo+IEBAIC00MjEsMTEgKzQyMSwxMCBAQCBPcHRpb24gMjogUGFja2FnZSB0aGUg
aW1hZ2Ugd2l0aCBTUEw6Cj4gICAgLSBQcmVmaXggcmszMzk5IGhlYWRlciB0byBTUEwgaW1hZ2UK
PiAgCj4gICAgICA9PiBjZCAvcGF0aC90by91LWJvb3QKPiAtICAgID0+IC4vdG9vbHMvbWtpbWFn
ZSAtbiByazMzOTkgLVQgcmtzZCAtZCBzcGwvdS1ib290LXNwbC1kdGIuYmluIG91dAo+ICAKPiAg
ICAtIFdyaXRlIHByZWZpeGVkIFNQTCBhdCA2NHRoIHNlY3Rvcgo+ICAKPiAtICAgID0+IHN1ZG8g
ZGQgaWY9b3V0IG9mPS9kZXYvc2RjIHNlZWs9NjQKPiArICAgID0+IHN1ZG8gZGQgaWY9c3BsL3Ut
Ym9vdC1zcGwtcm9ja2NoaXAuYmluIG9mPS9kZXYvc2RjIHNlZWs9NjQKPiAgCj4gICAgLSBXcml0
ZSBVLUJvb3QgcHJvcGVyIGF0IDE2Mzg0IHNlY3Rvcgo+ICAKPiBkaWZmIC0tZ2l0IGEvc2NyaXB0
cy9NYWtlZmlsZS5zcGwgYi9zY3JpcHRzL01ha2VmaWxlLnNwbAo+IGluZGV4IDU0YjE2MGQ3MmIu
LjQ5YzA2NDFhYTIgMTAwNjQ0Cj4gLS0tIGEvc2NyaXB0cy9NYWtlZmlsZS5zcGwKPiArKysgYi9z
Y3JpcHRzL01ha2VmaWxlLnNwbAo+IEBAIC0yMzUsNiArMjM1LDEwIEBAIEFMTC0kKENPTkZJR19B
UkNIX1pZTlFNUCkJKz0gJChvYmopL2Jvb3QuYmluCj4gIAo+ICBBTEwtJChDT05GSUdfQVJDSF9N
RURJQVRFSykJKz0gJChvYmopL3UtYm9vdC1zcGwtbXRrLmJpbgo+ICAKPiAraWZkZWYgQ09ORklH
X1JPQ0tDSElQX1JLMzM5OQo+ICtBTEwtJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkJKz0gJChvYmop
L3UtYm9vdC1zcGwtcm9ja2NoaXAuYmluCj4gK2VuZGlmCj4gKwo+ICBhbGw6CSQoQUxMLXkpCj4g
IAo+ICBxdWlldF9jbWRfY2F0ID0gQ0FUICAgICAkQAo+IEBAIC0zNjksNiArMzczLDIzIEBAIE1L
SU1BR0VGTEFHU191LWJvb3Qtc3BsLW10ay5iaW4gPSAtVCBtdGtfaW1hZ2UgXAo+ICAkKG9iaikv
dS1ib290LXNwbC1tdGsuYmluOiAkKG9iaikvdS1ib290LXNwbC5iaW4gRk9SQ0UKPiAgCSQoY2Fs
bCBpZl9jaGFuZ2VkLG1raW1hZ2UpCj4gIAo+ICsjIFJvY2tjaGlwIHNwZWNpZmljIFNQTCBidWls
ZAo+ICtpZmVxICgkKENPTkZJR19ST0NLQ0hJUF9SSzMzOTkpLHkpCj4gKwo+ICtpZmVxICgkKENP
TkZJR19TUElfRkxBU0hfU1VQUE9SVCkseSkKPiArUk9DS0NISVBfSU1HX1RZUEUgOj0gcmtzcGkK
PiArZWxzZQo+ICtST0NLQ0hJUF9JTUdfVFlQRSA6PSBya3NkCj4gK2VuZGlmCj4gKwo+ICtNS0lN
QUdFRkxBR1NfdS1ib290LXNwbC1yb2NrY2hpcC5iaW4gPSAtbiAkKENPTkZJR19TUExfUk9DS0NI
SVBfSU1HX05BTUUpIFwKPiArCS1UICQoUk9DS0NISVBfSU1HX1RZUEUpIC1kICQoTUtJTUFHRU9V
VFBVVCkKPiArCj4gKyQob2JqKS91LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbjogJChvYmopL3UtYm9v
dC1zcGwuYmluIEZPUkNFCj4gKwkkKGNhbGwgaWZfY2hhbmdlZCxta2ltYWdlKQo+ICsKPiArZW5k
aWYgIyBDT05GSUdfUk9DS0NISVBfUkszMzk5Cj4gKwo+ICAjIFJ1bGUgdG8gbGluayB1LWJvb3Qt
c3BsCj4gICMgTWF5IGJlIG92ZXJyaWRkZW4gYnkgYXJjaC8kKEFSQ0gpL2NvbmZpZy5tawo+ICBx
dWlldF9jbWRfdS1ib290LXNwbCA/PSBMRCAgICAgICRACgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
