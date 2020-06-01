Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 960BD1E9B18
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jun 2020 02:55:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CgD9VKcKOIbGozhxI+qax10ecph1Nw8hDfI+KLc+Hl0=; b=tsAqvpGH9bk1268JtL/WGu9tE
	lamcHv5ub0jsy+H58JBNsApzSxgP2EdLiFcSNbrnOwYw4aGSkPsaGVcvmjLlKcPoja2IClXTLE73M
	YZPpRK7jwe7NctoJleQaT1bMEp7vm6SU2IuCH/Nl4qraygOG4nqgeL99kyzi/HKuBjGrezqTkA924
	+oXdfvSxji7yuDuBUZpgclPBhHRfI7YhBZLIOYNIx42Il+L3aaP08Rfs3ALaumoAzRM6+0jyIgsrK
	+PPRyX7XLuwK2LvlpCwzn7SOcMf7lMOYUUwJZ/VlhEN5DzDiCLnD4Eccjza3HEv9rhG2T24QHMRXw
	WgrvgA7kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfYjH-0005az-2t; Mon, 01 Jun 2020 00:55:03 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfYjC-0005WZ-Il
 for linux-rockchip@lists.infradead.org; Mon, 01 Jun 2020 00:55:00 +0000
Received: from localhost (unknown [192.168.167.139])
 by regular1.263xmail.com (Postfix) with ESMTP id BF161860;
 Mon,  1 Jun 2020 08:54:48 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.66] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P25889T140623573141248S1590972885358576_; 
 Mon, 01 Jun 2020 08:54:47 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d0beb6f911a35b759a870ce89f4a9b31>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: wmc@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v6 00/16] Add Rockchip RK3399 USB3.0 Host support
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de, marex@denx.de,
 bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com,
 klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com,
 sjg@chromium.org
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <4e857cda-d776-31d5-0e70-75a01eb0c22f@rock-chips.com>
Date: Mon, 1 Jun 2020 08:54:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200526033220.20047-1-frank.wang@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_175458_968106_E101DF3F 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.201 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [211.150.70.201 listed in wl.mailspike.net]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: jianing.ren@rock-chips.com, marek.belisko@gmail.com, wmc@rock-chips.com,
 u-boot@lists.denx.de, william.wu@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 chenjh@rock-chips.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNS8yNiDkuIrljYgxMTozMiwgRnJhbmsgV2FuZyB3cm90ZToKPiBUaGlzIHNlcmll
cyBhZGQgcXVpcmtzIGZvciBEV0MzIGFuZCBhZGQgUm9ja2NoaXAgUkszMzk5IFVTQjMuMCBob3N0
IHN1cHBvcnQuCj4KPiBUaGUgZnVuY3Rpb24gaGFzIGJlZW4gdGVzdGVkIHBhc3Mgb24gcmszMzk5
LWV2YiBhbmQgcm9jLXJrMzM5OS1wYyBib2FyZC4KPgo+IEZvciBWNiB1cGRhdGU6Cj4gICAtIFVz
ZSBbUEFUQ0ggdjYgMDQvMTZdIGluc3RlYWQgb2YgW1BBVENIIHY1IDA1LzE2XSB0byBmaXggdGhh
dCB0aGUgY3VycmVudAo+ICAgICBHZW5lcmljIFBIWSBzdWJzeXN0ZW0gaXMgdW5hYmxlIHRvIGZp
bmQgUEhZIGlmIHRoZSBQSFkgbm9kZSBpcyBub3QgcGFydCBvZgo+ICAgICB0aGUgcm9vdCBzdHJ1
Y3R1cmUuCj4gICAtIEFkZCAnUmV2aWV3ZWQtYnknIHRhZyBmb3IgYWxsIHBhdGNoZXMgZXhjZXB0
IFtQQVRDSCB2NiAwNC8xNl0uCj4KPiBGb3IgVjUgdXBkYXRlOgo+ICAgLSBGaXggZHdjMy1nZW5l
cmljIGRyaXZlciBmb2xsb3dlZCBNYXJlaydzIGNvbW1lbnRzIGZvciBbUEFUQ0ggdjQgMTIvMTZd
Lgo+ICAgLSBBZGQgJ1Jldmlld2VkLWJ5JyBhbmQgJ1Rlc3RlZC1ieScgdGFnIGZvciBbUEFUQ0gg
djQgMDcvMTZdIGFuZCBbUEFUQ0ggdjQgMDgvMTZdLgo+Cj4gRm9yIFY0IHVwZGF0ZToKPiAgIC0g
Q29sbGVjdCBKYWdhbidzIGFsbCBmaXhlZCBwYXRjaGVzIFsxXS4KPiAgIC0gQW1lbmQgc3BlY2lm
aWMgdS1ib290IGNoYW5nZXMgZnJvbSBkdHMgdG8gZHRzaSBmb3IgW1BBVENIIHYzIDYvN10uCj4K
PiBGb3IgVjMgdXBkYXRlOgo+ICAgLSBGaXggY29tcGlsZSBlcnJvciBmb3IgW1BBVENIIHYyIDEv
OV0uCj4gICAtIFVzZSBKYWdhbidzIFR5cGUtQyBkcml2ZXIgaW5zdGVhZCBvZiBbUEFUQ0ggdjIg
NS85XS4KPiAgIC0gQ2xlYW51cCBkdHMgY2hhbmdlcyBmb3IgW1BBVENIIHYyIDcvOV0uCj4gICAt
IENsZWFudXAgY29uZmlnIGNoYW5nZXMgZm9yIFtQQVRDSCB2MiA4LzldIGFuZCBbUEFUQ0ggdjIg
OS85XS4KPgo+IEZvciBWMiB1cGRhdGU6Cj4gICAtIEFtZW5kIHR5cGUtYyBkcml2ZXIgZm9sbG93
ZWQgSmFnYW4ncyBjb21tZW50cyBmb3IgW1BBVENIIDUvOF0uCj4gICAtIEZpeCBkdHMgY29tbWl0
IGZvciBbUEFUQ0ggNy84XS4KPiAgIC0gU3BsaXQgUkszMzk5IGRlZmF1bHQgY29uZmlnIGZvciBb
UEFUQ0ggOC84XS4KPiAgIC0gQWRkICdSZXZpZXdlZC1ieScgdGFnIGZvciBbUEFUQ0ggMS84XSwg
W1BBVENIIDIvOF0gYW5kIFtQQVRDSCAzLzhdLgo+Cj4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLm96
bGFicy5vcmcvcHJvamVjdC91Ym9vdC9jb3Zlci8yMDIwMDUwNjA3NTAyNS4xNjc3LTEtamFnYW5A
YW1hcnVsYXNvbHV0aW9ucy5jb20KPgo+IEJSLAo+IEZyYW5rCj4KPiBGcmFuayBXYW5nICg4KToK
PiAgICBhcm06IG1hY2gtcm9ja2NoaXA6IGJpbmQgc3ViLW5vZGVzIGZvciByazMzOTlfc3lzY29u
Cj4gICAgdXNiOiBkd2MzOiBhZGQgZGlzX2VuYmxzbHBtX3F1aXJrCj4gICAgdXNiOiBkd2MzOiBh
ZGQgZGlzX3UyX2ZyZWVjbGtfZXhpc3RzX3F1aXJrCj4gICAgdXNiOiBkd2MzOiBhbWVuZCBVVE1J
L1VUTUlXIHBoeSBpbnRlcmZhY2Ugc2V0dXAKPiAgICB1c2I6IGR3YzM6IGFkZCBtYWtlIGNvbXBh
dGlibGUgZm9yIHJvY2tjaGlwIHBsYXRmb3JtCj4gICAgZHJpdmVyOiB1c2I6IGRyb3AgbGVnYWN5
IHJvY2tjaGlwIHhoY2kgZHJpdmVyCj4gICAgQVJNOiBkdHM6IHJrMzM5OS1ldmI6IHVzYjMuMCBo
b3N0IHN1cHBvcnQKPiAgICBjb25maWdzOiBldmItcmszMzk5OiB1cGRhdGUgc3VwcG9ydCB1c2Iz
LjAgaG9zdAo+Cj4gSmFnYW4gVGVraSAoOCk6Cj4gICAgY2xrOiByazMzOTk6IEVuYWJsZS9EaXNh
YmxlIHRoZSBVU0IyUEhZIGNsawo+ICAgIGNsazogcmszMzk5OiBTZXQgZW1wdHkgZm9yIFRDUEhZ
IGFzc2lnbmVkLWNsb2Nrcwo+ICAgIGNsazogcmszMzk5OiBFbmFibGUvRGlzYWJsZSBUQ1BIWSBj
bG9ja3MKPiAgICBwaHk6IHJvY2tjaGlwOiBBZGQgUm9ja2NoaXAgVVNCMlBIWSBkcml2ZXIKPiAg
ICBwaHk6IHJvY2tjaGlwOiBBZGQgUm9ja2NoaXAgVVNCIFR5cGVDIFBIWSBkcml2ZXIKPiAgICB1
c2I6IGR3YzM6IEFkZCBkaXNhYmxlIHUybWFjIGxpbmVzdGF0ZSBjaGVjayBxdWlyawo+ICAgIHVz
YjogZHdjMzogRW5hYmxlIEF1dG9SZXRyeSBmZWF0dXJlIGluIHRoZSBjb250cm9sbGVyCj4gICAg
cm9jLXJrMzM5OS1wYzogRW5hYmxlIFVTQjMuMCBIb3N0Cj4KPiAgIGFyY2gvYXJtL2R0cy9yazMz
OTktZXZiLXUtYm9vdC5kdHNpICAgICAgICAgICB8ICAxMyArCj4gICBhcmNoL2FybS9tYWNoLXJv
Y2tjaGlwL3JrMzM5OS9zeXNjb25fcmszMzk5LmMgfCAgIDMgKwo+ICAgY29uZmlncy9ldmItcmsz
Mzk5X2RlZmNvbmZpZyAgICAgICAgICAgICAgICAgIHwgICA2ICsKPiAgIGNvbmZpZ3Mvcm9jLXBj
LW1lenphbmluZS1yazMzOTlfZGVmY29uZmlnICAgICB8ICAgNSArCj4gICBjb25maWdzL3JvYy1w
Yy1yazMzOTlfZGVmY29uZmlnICAgICAgICAgICAgICAgfCAgIDYgKwo+ICAgZHJpdmVycy9NYWtl
ZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKPiAgIGRyaXZlcnMvY2xr
L3JvY2tjaGlwL2Nsa19yazMzOTkuYyAgICAgICAgICAgICB8ICAzOCArCj4gICBkcml2ZXJzL3Bo
eS9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwo+ICAgZHJpdmVycy9w
aHkvcm9ja2NoaXAvS2NvbmZpZyAgICAgICAgICAgICAgICAgIHwgIDIxICsKPiAgIGRyaXZlcnMv
cGh5L3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgNyArCj4gICBkcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2IyLmMgfCAzMTIgKysrKysrKwo+ICAg
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXR5cGVjLmMgICAgIHwgNzk2ICsrKysr
KysrKysrKysrKysrKwo+ICAgZHJpdmVycy91c2IvY29tbW9uL2NvbW1vbi5jICAgICAgICAgICAg
ICAgICAgIHwgIDI1ICsKPiAgIGRyaXZlcnMvdXNiL2R3YzMvY29yZS5jICAgICAgICAgICAgICAg
ICAgICAgICB8IDEwNiArKy0KPiAgIGRyaXZlcnMvdXNiL2R3YzMvY29yZS5oICAgICAgICAgICAg
ICAgICAgICAgICB8ICAxOSArCj4gICBkcml2ZXJzL3VzYi9kd2MzL2R3YzMtZ2VuZXJpYy5jICAg
ICAgICAgICAgICAgfCAgMzMgKy0KPiAgIGRyaXZlcnMvdXNiL2hvc3QvS2NvbmZpZyAgICAgICAg
ICAgICAgICAgICAgICB8ICAgOSAtCj4gICBkcml2ZXJzL3VzYi9ob3N0L01ha2VmaWxlICAgICAg
ICAgICAgICAgICAgICAgfCAgIDEgLQo+ICAgZHJpdmVycy91c2IvaG9zdC94aGNpLXJvY2tjaGlw
LmMgICAgICAgICAgICAgIHwgMTk2IC0tLS0tCj4gICBpbmNsdWRlL2R3YzMtdWJvb3QuaCAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgIDMgKwo+ICAgaW5jbHVkZS9saW51eC91c2IvcGh5Lmgg
ICAgICAgICAgICAgICAgICAgICAgIHwgIDE4ICsKPiAgIDIxIGZpbGVzIGNoYW5nZWQsIDEzNzYg
aW5zZXJ0aW9ucygrKSwgMjQzIGRlbGV0aW9ucygtKQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvcGh5L3JvY2tjaGlwL0tjb25maWcKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L3BoeS9yb2NrY2hpcC9NYWtlZmlsZQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYwo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC10eXBlYy5jCj4gICBkZWxldGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy91c2IvaG9zdC94aGNpLXJvY2tjaGlwLmMKPgpBcHBsaWVkIHRvIHUt
Ym9vdC1yb2NrY2hpcCBtYXN0ZXIuCgpUaGFua3MsCi0gS2V2ZXIKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
