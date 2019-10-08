Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F22CEFE9
	for <lists+linux-rockchip@lfdr.de>; Tue,  8 Oct 2019 02:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7RtqT8cdzZkCw+G3HTFYo2xlfu+ThfdMKoheQ+WOztM=; b=rkDYsSaTquim+n6vjmS8OAfVE
	vo49fkzoM2mshLpwobKo+GJ3XZwOv1q/zob+UW//sypVkShOCLNJX4mMPUi3PjW3CNkofxLaT0GIH
	GNuLqL4k2OvHODJ/GNSBKdEu3Nva5DuLWNxcZ/acnItQ5WlmSh87YvTKj9OuEg9CsYhasceNxaQcN
	XcH83PDM/WqyIpb0VQ73jObk6PsMTAO/ada0R80Feg9kfP3m2EEQxXN1C2lZq834yFFc7gUVoPp5q
	X+0i3vdDhv8uzoFcBldTlet2B3vU7LCxrTOn/gbknAdNBt/JQBMQl6NrnEa6ulb2FqPCYREEzFGZG
	LjnM0WP+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHdPj-00037T-Fu; Tue, 08 Oct 2019 00:31:43 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHdPf-00036q-OF
 for linux-rockchip@lists.infradead.org; Tue, 08 Oct 2019 00:31:42 +0000
Received: from localhost (unknown [192.168.167.161])
 by regular1.263xmail.com (Postfix) with ESMTP id DE150E53;
 Tue,  8 Oct 2019 08:31:27 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P20313T140588970116864S1570494684743493_; 
 Tue, 08 Oct 2019 08:31:25 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <1db0f2133019f2f2e303c39f4a8cd746>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: gajjar04akash@gmail.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [U-Boot] [PATCH v3 00/57] ram: rk3399: Add LPDDR4 support
To: Qu Wenruo <quwenruo.btrfs@gmx.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <310a4823-ce36-6152-2886-2bb6fcc0e328@gmx.com>
 <9816875f-6166-ce55-6ed5-211e6a40b4fe@gmx.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <b75d1b23-78e4-01e0-77e0-26de152a8b89@rock-chips.com>
Date: Tue, 8 Oct 2019 08:31:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <9816875f-6166-ce55-6ed5-211e6a40b4fe@gmx.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_173140_127131_73427968 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: 5.1 (+++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [58.22.7.114 listed in zen.spamhaus.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.196 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Spam-Flag: YES
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgUXUgYW5kIE1hbmksCgoKVGhpcyBwYXRjaCBoYXMgYWxyZWFkeSBvbiB0aGUgbWF0ZXIsIHlv
dSBjYW4gdHJ5IHdpdGggbWFzdGVyIGNvZGUgYW5kIAp1c2UgaWRibG9hZGVyLmltZwoKZGlyZWN0
bHkuCgoKVGhhbmtzLAoKLSBLZXZlcgoKT24gMjAxOS8xMC82IOS4iuWNiDk6MzAsIFF1IFdlbnJ1
byB3cm90ZToKPgo+IE9uIDIwMTkvMTAvNiDkuIrljYg5OjA1LCBRdSBXZW5ydW8gd3JvdGU6Cj4+
Cj4+IE9uIDIwMTkvNy8xNiDkuIvljYg3OjU2LCBKYWdhbiBUZWtpIHdyb3RlOgo+Pj4gVGhpcyBp
cyBuZXh0IHJldmlzb24gb2YgbHBkZHI0IHN1cHBvcnQgb24gcmszMzk5IGNvbXBhcmVkIHRvCj4+
PiBwcmV2aW91cyBzZXRbMV0uIEl0IGhhcyBzb21lIGNoYW5nZXMgYmFzZWQgb24gdGhlIGNvbW1p
dCBvcmRlcnMKPj4+IGFuZCBzcXVhc2hpbmcgZmV3IHBhdGNoZXMgdG9nZXRoZXIgYW5kIHJlc3Qg
aXMgc2FtZS4KPj4+Cj4+PiBUaGFua3MgdG8KPj4+IC0gWW91TWluIENoZW4KPj4+IC0gQWthc2gg
R2FqamFyCj4+PiAtIEtldmVyIFlhbmcKPj4+IGZvciBzdXBwb3J0aW5nIGFsbCB0aGUgaGVscCBv
biB0aGlzIHdvcmsuCj4+Pgo+Pj4gQ2hhbmdlcyBmb3IgdjM6Cj4+PiAtIHNxdWFzaCBzZXRfcmF0
ZSBjb2RlIGluIG9uZSBwYXRjaAo+Pj4gLSB0ZXN0ZWQgaW4gUm9ja3BybzY0IGFuZCBSb2NrLVBJ
LTQKPj4gR3JlYXQgd29ya3MhIENhbid0IHdhaXQgdG8gdHJ5IHRoZW0gb24gYm90aCBib2FyZHMh
Cj4+Cj4+IFdvdWxkIHlvdSBtaW5kIHRvIHNldHVwIGEgZ2l0IHJlcG8gZm9yIHRoaXMgbGFyZ2Ug
cGF0Y2hzZXQ/Cj4+IEl0IHdvdWxkIGJlIG11Y2ggZWFzaWVyIGZvciBvdGhlciBndXlzIHRvIHRl
c3QsIG90aGVyIHRoYW4gZmV0Y2hpbmcgYWxsCj4+IHRoZSBwYXRjaGVzIGFuZCBhcHBseSB0aGVt
Lgo+IEluIGZhY3QgdGhlIHBhdGNoc2V0IGNhbid0IGJlIGFwcGxpZWQgdG8gY3VycmVudCBtYXN0
ZXIgZHVlIHRvIGNvbmZsaWN0cy4KPiBBbmQgZnVydGhlcm1vcmUgdGhlIGhhc2ggZG9lc24ndCBt
YXRjaCBhbnkgZXhpc3RpbmcgdHJlZS4KPgo+IFdvdWxkIHlvdSBtaW5kIHRvIHJlYmFzZSBpdCB0
byBjdXJyZW50IG1hc3Rlcj8gT3IgYXQgbGVhc3QgYSBnaXQgcmVwbyBzbwo+IEkgY291bGQgdHJ5
IHRvIHJlYmFzZSB0aGVtLgo+Cj4gVGhhbmtzLAo+IFF1Cj4+IFRoYW5rcywKPj4gUXUKPj4KPj4+
IC0gb3JkZXIgdGhlbSBpbiBwcm9wZXIgd2F5Cj4+PiAtIHJlYmFzZSBvbiBtYXN0ZXIKPj4+IENo
YW5nZXMgZm9yIHYyOgo+Pj4gLSBoYW5kbGUgTFBERFI0IGNvZGUgYXMgcGFydCBvZiBDT05GSUdf
UkFNX1JLMzM5OV9MUEREUjQKPj4+IC0gc3VwcG9ydCBkYXRhX3RyYWluaW5nIGFuZCBzZXRfcmF0
ZSB2aWEgc2RyYW1fcmszMzk5X29wcwo+Pj4gLSBhZGQgcHJvcGVyIHN5c19yZWdfZW5jIG1hY3Jv
cwo+Pj4gLSBhZGQgbmV3IHBhdGNoIHRvIHJlbmFtZSB2YXJpYWJsZSBzZHJhbV9wYXJhbXMgd2l0
aCBwYXJhbXMKPj4+IC0gZml4IGZldyBjb21taXQgbWVzc2FnZXMuCj4+Pgo+Pj4gcGF0Y2ggMDAw
MSAtIDAwMTg6IGFkZCBkcmFtIGNvbmZpZyBlbmMgbWFjcm8KPj4+Cj4+PiBwYXRjaCAwMDE5OiBj
b25maWd1cmUgcGh5IElPIGluIGRzIG9kdAo+Pj4KPj4+IHBhdGNoIDAwMjA6IGFkZCBMUEREUjQg
Y29uZmlnCj4+Pgo+Pj4gcGF0Y2ggMDAyMSAtIDAwNDM6IGxwZGRyNCBkYXRhIHRyYWluaW5nIGNo
YW5nZXMKPj4+Cj4+PiBwYXRjaCAwMDQ0IC0gMDA0Njogc3lzY29uIHBtdSBzdXBwb3J0Cj4+Pgo+
Pj4gcGF0Y2ggMDA0Nzogc2V0IDUwTUh6IGRkciBjbG9jawo+Pj4KPj4+IHBhdGNoIDAwNDg6IHNl
dCA0MDBNSHogZGRyIGNsb2NrCj4+Pgo+Pj4gcGF0Y2ggMDA0OTogTFBERFI0LTQwMCB0aW1pbmdz
Cj4+Pgo+Pj4gcGF0Y2ggMDA1MDogTFBERFI0LTgwMCB0aW1pbmdzCj4+Pgo+Pj4gcGF0Y2ggMDA1
MSAtIDAwNTI6IGxwZGRyNCBzZXQgcmF0ZQo+Pj4KPj4+IHBhdGNoIDAwNTM6IGVuYWJsZSBscGRk
cjQgc3VwcG9ydCBvbiBSb2NrcHJvNjQKPj4+Cj4+PiBwYXRjaCAwMDU0OiBlbmFibGUgbHBkZHI0
IHN1cHBvcnQgb24gUm9jay1QSSA0Cj4+Pgo+Pj4gcGF0Y2ggMDA1NTogYWRkIExQRERSLTEwMCB0
aW1pbmdzIHZpYSBkdHMKPj4+Cj4+PiBwYXRjaCAwMDU2OiB1c2UgTFBERFItMTAwIHRpbWluZ3Mg
b24gUm9ja3BybzY0Cj4+Pgo+Pj4gcGF0Y2ggMDA1NzogdXNlIExQRERSLTEwMCB0aW1pbmdzIG9u
IFJvY2stUEkgNAo+Pj4KPj4+IFsxXSBodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL2NvdmVy
LzExMTY3MzQvCj4+Pgo+Pj4gQW55IGlucHV0cz8KPj4+IEphZ2FuLgo+Pj4KPj4+IEphZ2FuIFRl
a2kgKDU3KToKPj4+ICAgIHJhbTogcmszMzk5OiBBZGQgZGRydHlwZSBlbmMgbWFjcm8KPj4+ICAg
IHJhbTogcmszMzk5OiBBZGQgY2hhbm5lbCBudW1iZXIgZW5jb2RlciBtYWNybwo+Pj4gICAgcmFt
OiByazMzOTk6IEFkZCByb3dfM180IGVuYyBtYWNybwo+Pj4gICAgcmFtOiByazMzOTk6IEFkZCBj
aGlwaW5mbyBtYWNybwo+Pj4gICAgcmFtOiByazMzOTk6IEFkZCByYW5rIGVuYyBtYWNybwo+Pj4g
ICAgcmFtOiByazMzOTk6IEFkZCBjb2x1bW4gZW5jIG1hY3JvCj4+PiAgICByYW06IHJrMzM5OTog
QWRkIGJrIGVuYyBtYWNybwo+Pj4gICAgcmFtOiByazMzOTk6IEFkZCBkYncgZW5jIG1hY3JvCj4+
PiAgICByYW06IHJrMzM5OTogQWRkIGNzMF9ydyBtYWNybwo+Pj4gICAgcmFtOiByazMzOTk6IEFk
ZCBjczFfcncgbWFjcm8KPj4+ICAgIHJhbTogcmszMzk5OiBBZGQgYncgZW5jIG1hY3JvCj4+PiAg
ICByYW06IHJrMzM5OTogUmVuYW1lIHN5c19yZWcgd2l0aCBzeXNfcmVnMgo+Pj4gICAgcmFtOiBy
azMzOTk6IFVwZGF0ZSBjczBfcm93IHRvIHVzZSBzeXNfcmVnMwo+Pj4gICAgcmFtOiByazMzOTk6
IFVwZGF0ZSBjczFfcm93IHRvIHVzZSBzeXNfcmVnMwo+Pj4gICAgcmFtOiByazMzOTk6IEFkZCBj
czFfY29sIGVuYyBtYWNybwo+Pj4gICAgcmFtOiByazMzOTk6IEFkZCBkZHIgdmVyc2lvbiBlbmMg
bWFjcm8KPj4+ICAgIHJhbTogcmszMzk5OiBBZGQgZGRydGltaW5nQzAKPj4+ICAgIHJhbTogcmsz
Mzk5OiBBZGQgRGRyTW9kZQo+Pj4gICAgcmFtOiByazMzOTk6IENvbmZpZ3VyZSBwaHkgSU8gaW4g
ZHMgb2R0Cj4+PiAgICByYW06IHJvY2tjaGlwOiBLY29uZmlnOiBBZGQgUkszMzk5IExQRERSNCBl
bnRyeQo+Pj4gICAgcmFtOiByazMzOTk6IEFkZCBscGRkcjQgcmFuayBtYXNrIGZvciBjYSB0cmFp
bmluZwo+Pj4gICAgcmFtOiByazMzOTk6IEFkZCBscGRkcjQgcmFuayBtYXNrIGZvciB3ZHFsIHRy
YWluaW5nCj4+PiAgICByYW06IHJrMzM5OTogTW92ZSBtb2RlX3NlbCBhc3NpZ25tZW50Cj4+PiAg
ICByYW06IHJrMzM5OTogRG9uJ3Qgd2FpdCBmb3IgUExMIGxvY2sgaW4gbHBkZHI0Cj4+PiAgICBy
YW06IHJrMzM5OTogQXZvaWQgdHdvIGNoYW5uZWwgWlEgQ2FsIFN0YXJ0IGF0IHRoZSBzYW1lIHRp
bWUKPj4+ICAgIHJhbTogcmszMzk5OiBDb25maWd1cmUgUEhZXzg5OCwgUEhZXzkxOSBmb3IgbHBk
ZHI0Cj4+PiAgICByYW06IHJrMzM5OTogQ29uZmlndXJlIEJPT1NUUF9FTiwgQk9PU1ROX0VOIGZv
ciBscGRkcjQKPj4+ICAgIHJhbTogcmszMzk5OiBDb25maWd1cmUgU0xFV1BfRU4sIFNMRVdOX0VO
IGZvciBscGRkcjQKPj4+ICAgIHJhbTogcmszMzk5OiBDb25maWd1cmUgUEhZIFJYX0NNX0lOUFVU
IGZvciBscGRkcjQKPj4+ICAgIHJhbTogcmszMzk5OiBNYXAgY2hpcHNlbGVjdCBmb3IgbHBkZHI0
Cj4+PiAgICByYW06IHJrMzM5OTogQ29uZmlndXJlIHRzZWwgd3JpdGUgY2EgZm9yIGxwZGRyNAo+
Pj4gICAgcmFtOiByazMzOTk6IERvbid0IGRpc2FibGUgZGZpIGRyYW0gY2xrIGZvciBscGRkcjQs
IHJhbmsgMQo+Pj4gICAgcmFtOiByazMzOTk6IEFkZCBJTyBzZXR0aW5ncwo+Pj4gICAgcmFtOiBz
ZHJhbTogQ29uZmlndXJlIGxwZGRyNCB0c2VsIHJkLCB3ciBiYXNlZCBvbiBJTyBzZXR0aW5ncwo+
Pj4gICAgcmFtOiByazMzOTk6IEFkZCB0c2VsIGNvbnRyb2wgY2xvY2sgZHJpdmUKPj4+ICAgIHJh
bTogcmszMzk5OiBDb25maWd1cmUgc29jIG9kdCBzdXBwb3J0Cj4+PiAgICByYW06IHJrMzM5OTog
R2V0IGxwZGRyNCB0c2VsX3JkX2VuIGZyb20gaW8gc2V0dGluZ3MKPj4+ICAgIHJhbTogcmszMzk5
OiBVcGRhdGUgbHBkZHI0IHZyZWYgYmFzZWQgb24gaW8gc2V0dGluZ3MKPj4+ICAgIHJhbTogcmsz
Mzk5OiBVcGRhdGUgbHBkZHI0IG1vZGVfc2VsIGJhc2VkIG9uIGlvIHNldHRpbmdzCj4+PiAgICBy
YW06IHJrMzM5OTogVXBkYXRlIGxwZGRyNCB2cmVmX21vZGVfYWMKPj4+ICAgIHJhbTogcmszMzk5
OiBTaW1wbGlmeSBkYXRhIHRyYWluaW5nIGZpcnN0IGFyZ3VtZW50Cj4+PiAgICByYW06IHJrMzM5
OTogSGFuZGxlIGRhdGEgdHJhaW5pbmcgdmlhIG9wcwo+Pj4gICAgcmFtOiByazMzOTk6IEFkZCBM
UFBEUjQgbXIgZGV0ZWN0aW9uCj4+PiAgICBhcm06IGluY2x1ZGU6IHJvY2tjaGlwOiBBZGQgcmsz
Mzk5IHBtdSBmaWxlCj4+PiAgICByb2NrY2hpcDogcmszMzk5OiBzeXNjb246IEFkZCBwbXUgc3Vw
cG9ydAo+Pj4gICAgcm9ja2NoaXA6IGR0czogcmszMzk5OiBBZGQgdS1ib290LCBkbS1wcmUtcmVs
b2MgZm9yIHBtdQo+Pj4gICAgY2xrOiByb2NrY2hpcDogcmszMzk5OiBTZXQgNTBNSHogZGRyIGNs
b2NrCj4+PiAgICBjbGs6IHJvY2tjaGlwOiByazMzOTk6IFNldCA0MDBNSHogZGRyIGNsb2NrCj4+
PiAgICByYW06IHJrMzM5OTogQWRkIExQUEREUjQtNDAwIHRpbWluZ3MgaW5jCj4+PiAgICByYW06
IHJrMzM5OTogQWRkIExQUEREUjQtODAwIHRpbWluZ3MgaW5jCj4+PiAgICByYW06IHJrMzM5OTog
QWRkIHNldF9yYXRlIHNkcmFtIHJrMzM5OSBvcHMKPj4+ICAgIHJhbTogcmszMzk5OiBBZGQgbHBk
ZHI0IHNldCByYXRlIHN1cHBvcnQKPj4+ICAgIGNvbmZpZ3M6IHJvY2twcm82NDogRW5hYmxlIExQ
RERSNCBzdXBwb3J0Cj4+PiAgICBjb25maWdzOiByb2NrLXBpLTQ6IEVuYWJsZSBMUEREUjQgc3Vw
cG9ydAo+Pj4gICAgcm9ja2NoaXA6IGR0czogcmszMzk5OiBBZGQgTFBERFI0LTEwMCB0aW1pbmdz
Cj4+PiAgICByb2NrY2hpcDogZHRzOiByazMzOTk6IHJvY2twcm82NDogVXNlIExQRERSNC0xMDAg
ZHRzaQo+Pj4gICAgcm9ja2NoaXA6IGR0czogcmszMzk5OiByb2NrLXBpLTQ6IFVzZSBMUEREUjQt
MTAwIGR0c2kKPj4+Cj4+PiAgIGFyY2gvYXJtL2R0cy9yazMzOTktcm9jay1waS00LXUtYm9vdC5k
dHNpICAgICB8ICAgIDEgKwo+Pj4gICBhcmNoL2FybS9kdHMvcmszMzk5LXJvY2twcm82NC11LWJv
b3QuZHRzaSAgICAgfCAgICAxICsKPj4+ICAgYXJjaC9hcm0vZHRzL3JrMzM5OS1zZHJhbS1scGRk
cjQtMTAwLmR0c2kgICAgIHwgMTUzNyArKysrKysrKysrKysrKysKPj4+ICAgYXJjaC9hcm0vZHRz
L3JrMzM5OS11LWJvb3QuZHRzaSAgICAgICAgICAgICAgIHwgICAgNCArCj4+PiAgIC4uLi9pbmNs
dWRlL2FzbS9hcmNoLXJvY2tjaGlwL3BtdV9yazMzOTkuaCAgICB8ICAgNzIgKwo+Pj4gICAuLi4v
aW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaCAgfCAgIDMxICsKPj4+ICAg
Li4uL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fcmszMzk5LmggIHwgICAyOSArLQo+
Pj4gICBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzM5OS9zeXNjb25fcmszMzk5LmMgfCAgICA4
ICsKPj4+ICAgY29uZmlncy9yb2NrLXBpLTQtcmszMzk5X2RlZmNvbmZpZyAgICAgICAgICAgIHwg
ICAgMSArCj4+PiAgIGNvbmZpZ3Mvcm9ja3BybzY0LXJrMzM5OV9kZWZjb25maWcgICAgICAgICAg
ICB8ICAgIDEgKwo+Pj4gICBkcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGtfcmszMzk5LmMgICAgICAg
ICAgICAgfCAgICA4ICsKPj4+ICAgZHJpdmVycy9yYW0vcm9ja2NoaXAvS2NvbmZpZyAgICAgICAg
ICAgICAgICAgIHwgICAgNyArCj4+PiAgIC4uLi9yYW0vcm9ja2NoaXAvc2RyYW0tcmszMzk5LWxw
ZGRyNC00MDAuaW5jICB8IDE1NzAgKysrKysrKysrKysrKysrCj4+PiAgIC4uLi9yYW0vcm9ja2No
aXAvc2RyYW0tcmszMzk5LWxwZGRyNC04MDAuaW5jICB8IDE1NzAgKysrKysrKysrKysrKysrCj4+
PiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jICAgICAgICAgICB8IDE3MjYg
KysrKysrKysrKysrKystLS0KPj4+ICAgMTUgZmlsZXMgY2hhbmdlZCwgNjMxNyBpbnNlcnRpb25z
KCspLCAyNDkgZGVsZXRpb25zKC0pCj4+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9k
dHMvcmszMzk5LXNkcmFtLWxwZGRyNC0xMDAuZHRzaQo+Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQg
YXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9wbXVfcmszMzk5LmgKPj4+ICAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtLXJrMzM5OS1scGRkcjQt
NDAwLmluYwo+Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9yYW0vcm9ja2NoaXAvc2Ry
YW0tcmszMzk5LWxwZGRyNC04MDAuaW5jCj4+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBVLUJvb3QgbWFpbGluZyBsaXN0Cj4+IFUtQm9v
dEBsaXN0cy5kZW54LmRlCj4+IGh0dHBzOi8vbGlzdHMuZGVueC5kZS9saXN0aW5mby91LWJvb3QK
Pj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
