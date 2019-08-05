Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1926B8190A
	for <lists+linux-rockchip@lfdr.de>; Mon,  5 Aug 2019 14:18:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xak5ngoQu6hSRzruXsH3PxeBHmO/cKfd4/eoDtmzHjQ=; b=YxfSMVmClygeh7vBr+OjIXFXx
	Yxz6Lw8lZJMxYoOB81oyZqNmCrszgUUtw8d0V+ZKEQZUmPPMPAlPhhQsqiJ5pTQeod9Av8SpFVuDf
	UXqCg2sitQAqD5Pv2iz1I1p6zpmvp1urdMjR8UEa4C2dZobYZid4GspjwBtVkfMEKS9u0gB/LMLbL
	EmhuH1EUuJ6z6GPkt1hcccrNm41RlTPgvYu56z8rHM3OMV+GSlwfUHTxcSmz+wOJCNZ+R3nFFOUOd
	ChGJZNkHFkLJzJXtTSYLT9ewEexiF7oZ/qxdjtTTXIRXpsukOWu9F+zWZDvxkfe7g91V+d4erFrCA
	rnkSoK8xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubwT-0004D1-Fv; Mon, 05 Aug 2019 12:18:21 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubwQ-0004Ci-0P
 for linux-rockchip@lists.infradead.org; Mon, 05 Aug 2019 12:18:20 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.152])
 by regular1.263xmail.com (Postfix) with ESMTP id 05C6B779;
 Mon,  5 Aug 2019 20:18:09 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.33.93] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P27881T139924846139136S1565007486084948_; 
 Mon, 05 Aug 2019 20:18:07 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <194a6d3a0e1bafd093f6a6fec6a047c1>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 00/15] rk3399: Add redundant boot support
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <a4716e1a-d9a7-3764-5e90-2104dafe29d2@rock-chips.com>
Date: Mon, 5 Aug 2019 20:18:07 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729074711.16988-1-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_051818_410352_5C6720F5 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSmFnYW4sCgpPbiAyMDE5LzcvMjkg5LiL5Y2IMzo0NiwgSmFnYW4gVGVraSB3cm90ZToKPiBC
b290IHJlZHVuZGFuY3kgaXMgb25lIG9mIHRoZSBrZXkgY3JpdGVyaWEgZm9yIHN3aXRjaAo+IHJl
Y292ZXJ5IG9yIGdvbGRlbiBwYXJ0aXRpb24gYmFzZWQgb24gdGhlIGJvb3Rjb3VudAo+IHZhbHVl
LCB3aGljaCBpbmRlZWQgdmVyeSBtdWNoIG5lZWRlZCBpbiBwcm9kdWN0aW9uCj4gc3lzdGVtcyBv
biB0aGUgZmllbGRzLgo+Cj4gVGhpcyBwYXRjaHNldCBzdXBwb3J0IHJlZHVuZGFudCBib290IG9u
IFJvY2tjaGlwIHJrMzM5OS4KCgpUaGFua3MgZm9yIHlvdXIgcGF0Y2hlcywgeW91IHdpbGwgbmVl
ZCB0byB1cGRhdGUgeW91ciBwYXRjaGVzIHVwb24KCmxhdGVzdCBtYWlubGluZSBVLUJvb3QuCgoK
VGhhbmtzLAoKLSBLZXZlcgoKPgo+IFRvIG1ha2UgZnVsbCBmdW5jdGlvbmFsIHJlZHVuZGFuY3kg
YmVsb3cgZmVhdHVyZXMKPiB3b3VsZCByZXF1aXJlIGZyb20gVS1Cb290IGxldmVsLgo+IC0gYm9v
dGNvdW50LCBmb3IgY291bnRpbmcgbnVtYmVyIHJlYm9vdHMKPiAtIGFsdGJvb3QKPiAtIHdhdGNo
ZG9nIHN1cHBvcnQsIGlmIFNQTCBvciBVLUJvb3QgcmVzZXQgYmVjYXVzZSBvZiBXRFQKPiAtIGFk
ZCBDUFVJTkZPIGZvciBtb3JlIHVuZGVyc3RhbmRpbmcgYWJvdXQgaG93IFNvQyBhbmQKPiAgICBy
ZXNldCByZWFzb24uCj4KPiBwYXRjaCAwMDAxIC0gMDAwNTogY3B1IGluZm8sIHJlc2V0IHJlYXNv
bgo+Cj4gcGF0Y2ggMDAwNiAtIDAwMDk6IGRlc2lnbndhcmUgd2F0Y2hkb2cgZHJpdmVyLCBkbS1j
b252ZXJzaW9uCj4KPiBwYXRjaCAwMDEwOiBBZGQgd2F0Y2hkb2cgcHJvcGVydHkgYXZhaWxhYmxl
IHRvIFNQTAo+Cj4gcGF0Y2ggMDAxMTogQWRkIEtjb25maWcgb3B0aW9uIGZvciBkd193ZHQuYwo+
Cj4gcGF0Y2ggMDAxMjogRGlzYWJsZSB3YXRjaGRvZyBmb3IgVFBMCj4KPiBwYXRjaCAwMDEzOiBl
bmFibGUgd2F0Y2hkb2cgb24gcm9ja3BybzY0LCBvdmVybGF5Cj4KPiBwYXRjaCAwMDE0OiBib290
Y291bnQgc3VwcG9ydAo+Cj4gcGF0Y2ggMDAxNTogZW5hYmxlIGJvb3Rjb3VudCBvbiByb2NrcHJv
NjQsIG92ZXJsYXkKPgo+IEkgd291bGQgbGlrZSwgbm90IHRvIG1lcmdlIHdhdGNoZG9nIGFuZCBi
b290Y291bnQgb24gTWFpbmxpbmUKPiBkZXZib2FyZHMgc2luY2UgdGhlc2UgZmVhdHVyZXMgd2ls
bCBtb3N0bHkgcmVxdWlyZWQgb24gcHJvZHVjdGlvbgo+IGRldmljZXMgYnV0IGFueSBjb21tZW50
cywgcGxlYXNlIHNoYXJlLgo+Cj4gQW55IGlucHV0cz8KPiBKYWdhbi4KPgo+IEphZ2FuIFRla2kg
KDE1KToKPiAgICBhcm06IHJvY2tjaGlwOiBBZGQgY29tbW9uIGNydS5oCj4gICAgcm9ja2NoaXA6
IEFkZCBjcHUtaW5mbwo+ICAgIHJvY2tjaGlwOiByazMyODg6IFByaW50IHJlc2V0IHJlYXNvbgo+
ICAgIHJvY2tjaGlwOiBBZGQgY29tbW9uIHJlc2V0IHJlYXNvbgo+ICAgIHJvY2tjaGlwOiByazMy
ODgvcmszMzk5OiBFbmFibGUgRElTUExBWV9DUFVJTkZPCj4gICAgd2R0OiBkZXNpZ253YXJlOiBT
aW1wbGlmeSBpc19lbmFibGVkIGZ1bmN0aW9uCj4gICAgd2R0OiBkZXNpZ253YXJlOiBTaW1wbGlm
eSBlbmFibGUgZnVuY3Rpb24KPiAgICB3ZHQ6IGR3OiBBZGQgZHJpdmVyLW1vZGVsIHN1cHBvcnQK
PiAgICB3ZHQ6IGR3OiBSZW5hbWUgdG8gZHdfd2R0LmMKPiAgICByb2NrY2hpcDogZHRzOiByazMz
OTk6IEFkZCB1LWJvb3QsIGRtLXByZS1yZWxvYyBmb3Igd2F0Y2hkb2cKPiAgICB3ZHQ6IEtjb25m
aWc6IEFkZCBXRFRfRFcgZW50cnkKPiAgICBpbmNsdWRlOiByazMzOTk6IERpc2FibGUgd2F0Y2hk
b2cgaW4gVFBMCj4gICAgW0RPIE5PVCBNRVJHRV0gcmszMzk5OiByb2NrcHJvNjQ6IEVuYWJsZSB3
YXRjaGRvZwo+ICAgIHJvY2tjaGlwOiByazMzOTk6IEFkZCBib290Y291bnQgc3VwcG9ydAo+ICAg
IFtETyBOT1QgTUVSR0VdIHJrMzM5OTogcm9ja3BybzY0OiBFbmFibGUgYm9vdGNvdW50Cj4KPiAg
IGFyY2gvYXJtL2R0cy9yazMzOTktdS1ib290LmR0c2kgICAgICAgICAgICAgICB8ICAgNiArCj4g
ICBhcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL2NydS5oICAgICAgfCAgMjggKysr
Cj4gICAuLi4vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9jcnVfcmszMjg4LmggICAgfCAgMTQg
Ky0KPiAgIGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvS2NvbmZpZyAgICAgICAgICAgICAgICB8ICAg
MiArCj4gICBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL01ha2VmaWxlICAgICAgICAgICAgICAgfCAg
IDEgKwo+ICAgYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9jcHUtaW5mby5jICAgICAgICAgICAgIHwg
IDY1ICsrKysrKysKPiAgIGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMjg4LWJvYXJkLmMgICAg
ICAgICB8ICAzOSAtLS0tCj4gICBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzI4OC9jbGtfcmsz
Mjg4LmMgICAgfCAgIDIgKy0KPiAgIGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMzk5LWJvYXJk
LXNwbC5jICAgICB8ICAgMiArLQo+ICAgYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMzOTkvS2Nv
bmZpZyAgICAgICAgIHwgIDEwICsKPiAgIGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMzk5L2Ns
a19yazMzOTkuYyAgICB8ICAgMiArLQo+ICAgY29tbW9uL2JvYXJkX2YuYyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgICAyICstCj4gICBjb25maWdzL2V2Yi1yazMyODhfZGVmY29uZmln
ICAgICAgICAgICAgICAgICAgfCAgIDEgLQo+ICAgY29uZmlncy9ldmItcmszMzk5X2RlZmNvbmZp
ZyAgICAgICAgICAgICAgICAgIHwgICAxIC0KPiAgIGNvbmZpZ3MvZmVubmVjLXJrMzI4OF9kZWZj
b25maWcgICAgICAgICAgICAgICB8ICAgMSAtCj4gICBjb25maWdzL2ZpY3VzLXJrMzM5OV9kZWZj
b25maWcgICAgICAgICAgICAgICAgfCAgIDEgLQo+ICAgY29uZmlncy9maXJlZmx5LXJrMzI4OF9k
ZWZjb25maWcgICAgICAgICAgICAgIHwgICAxIC0KPiAgIGNvbmZpZ3MvZmlyZWZseS1yazMzOTlf
ZGVmY29uZmlnICAgICAgICAgICAgICB8ICAgMSAtCj4gICBjb25maWdzL21pcWktcmszMjg4X2Rl
ZmNvbmZpZyAgICAgICAgICAgICAgICAgfCAgIDEgLQo+ICAgY29uZmlncy9uYW5vcGMtdDQtcmsz
Mzk5X2RlZmNvbmZpZyAgICAgICAgICAgIHwgICAxIC0KPiAgIGNvbmZpZ3MvbmFub3BpLW00LXJr
MzM5OV9kZWZjb25maWcgICAgICAgICAgICB8ICAgMSAtCj4gICBjb25maWdzL25hbm9waS1uZW80
LXJrMzM5OV9kZWZjb25maWcgICAgICAgICAgfCAgIDEgLQo+ICAgY29uZmlncy9vcmFuZ2VwaS1y
azMzOTlfZGVmY29uZmlnICAgICAgICAgICAgIHwgICAxIC0KPiAgIGNvbmZpZ3MvcGh5Y29yZS1y
azMyODhfZGVmY29uZmlnICAgICAgICAgICAgICB8ICAgMSAtCj4gICBjb25maWdzL3BvcG1ldGFs
LXJrMzI4OF9kZWZjb25maWcgICAgICAgICAgICAgfCAgIDEgLQo+ICAgY29uZmlncy9wdW1hLXJr
MzM5OV9kZWZjb25maWcgICAgICAgICAgICAgICAgIHwgICAxIC0KPiAgIGNvbmZpZ3Mvcm9jay1w
aS00LXJrMzM5OV9kZWZjb25maWcgICAgICAgICAgICB8ICAgMSAtCj4gICBjb25maWdzL3JvY2s5
NjAtcmszMzk5X2RlZmNvbmZpZyAgICAgICAgICAgICAgfCAgIDEgLQo+ICAgY29uZmlncy9yb2Nr
cHJvNjQtcmszMzk5X2RlZmNvbmZpZyAgICAgICAgICAgIHwgICA0ICstCj4gICBjb25maWdzL3Rp
bmtlci1yazMyODhfZGVmY29uZmlnICAgICAgICAgICAgICAgfCAgIDEgLQo+ICAgY29uZmlncy92
eWFzYS1yazMyODhfZGVmY29uZmlnICAgICAgICAgICAgICAgIHwgICAxIC0KPiAgIGRyaXZlcnMv
Y2xrL3JvY2tjaGlwL2Nsa19yazMyODguYyAgICAgICAgICAgICB8ICAgMiArLQo+ICAgZHJpdmVy
cy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jICAgICAgICAgICAgIHwgICAyICstCj4gICBkcml2
ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMyODguYyAgICAgICAgICAgfCAgIDIgKy0KPiAgIGRy
aXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jICAgICAgICAgICB8ICAgMiArLQo+ICAg
ZHJpdmVycy92aWRlby9yb2NrY2hpcC9yazMyODhfbWlwaS5jICAgICAgICAgIHwgICAyICstCj4g
ICBkcml2ZXJzL3ZpZGVvL3JvY2tjaGlwL3JrMzM5OV9taXBpLmMgICAgICAgICAgfCAgIDIgKy0K
PiAgIGRyaXZlcnMvdmlkZW8vcm9ja2NoaXAvcmtfbWlwaS5jICAgICAgICAgICAgICB8ICAgMiAr
LQo+ICAgZHJpdmVycy93YXRjaGRvZy9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgIHwgICA5
ICsKPiAgIGRyaXZlcnMvd2F0Y2hkb2cvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICB8ICAg
MiArLQo+ICAgZHJpdmVycy93YXRjaGRvZy9kZXNpZ253YXJlX3dkdC5jICAgICAgICAgICAgIHwg
IDczIC0tLS0tLS0KPiAgIGRyaXZlcnMvd2F0Y2hkb2cvZHdfd2R0LmMgICAgICAgICAgICAgICAg
ICAgICB8IDE4NCArKysrKysrKysrKysrKysrKysKPiAgIGluY2x1ZGUvY29uZmlncy9yazMzOTlf
Y29tbW9uLmggICAgICAgICAgICAgICB8ICAxMCArLQo+ICAgaW5jbHVkZS9jb25maWdzL3NvY2Zw
Z2FfY29tbW9uLmggICAgICAgICAgICAgIHwgICAyICstCj4gICBpbmNsdWRlL2NvbmZpZ3Mvc29j
ZnBnYV9zdHJhdGl4MTBfc29jZGsuaCAgICAgfCAgIDIgKy0KPiAgIHNjcmlwdHMvY29uZmlnX3do
aXRlbGlzdC50eHQgICAgICAgICAgICAgICAgICB8ICAgMSAtCj4gICA0NiBmaWxlcyBjaGFuZ2Vk
LCAzMzIgaW5zZXJ0aW9ucygrKSwgMTYwIGRlbGV0aW9ucygtKQo+ICAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGFyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvY3J1LmgKPiAgIGNyZWF0ZSBt
b2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL2NwdS1pbmZvLmMKPiAgIGRlbGV0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL3dhdGNoZG9nL2Rlc2lnbndhcmVfd2R0LmMKPiAgIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL3dhdGNoZG9nL2R3X3dkdC5jCj4KCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
