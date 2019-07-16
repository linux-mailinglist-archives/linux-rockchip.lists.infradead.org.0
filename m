Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFA46A33B
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:48:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xKeU0sj2rMJCiJAR5V8O5BQIPRQqqCfo158zBrDeKec=; b=WJqY8/SX7Z0Akkl328zxP6kMq
	CFd4MKvGLFEMucx34XuCBc/tmSqZTFMr0rJ7Ne3S16wLPhka3/1itHDC99zGEFwmxx8Mi3Usu/ZZq
	pifb0zU3USu3d2+UiTar9AVUElAd0I7TL+p7Juv+uR7PirPty4EqPSOFwejZ18PcvWSJMUaRLkcrb
	9GxXf7zGifRQWFWxlxf37tlQeDFAlQ+v0yE3Lh/IgxZU9lFAKK3z6b99b3Wq0c6nq5SYP6zg129KY
	R3zRtIocFtg1Yo2zhcBU7wiKqeW0NbZYahUCdngEINZnzVK/bzLxaLzNtwvWVKZQKK2Aw64WugxYT
	v8dYG/Qsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnIBy-0001Cu-6e; Tue, 16 Jul 2019 07:48:06 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnIBv-0001CP-DX
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:48:04 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.105])
 by regular1.263xmail.com (Postfix) with ESMTP id 7DBDB66B;
 Tue, 16 Jul 2019 15:47:59 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P29430T139996947760896S1563263268224678_; 
 Tue, 16 Jul 2019 15:47:56 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <aa66859c0a6102021d06e1f88f7bfcbd>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 18/18] rockchip: dts: rk3399: nanopi-neo4: Use
 DDR3-1866 dtsi
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-19-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <0646aaf8-6ff2-fa18-23e2-596cd686b8b2@rock-chips.com>
Date: Tue, 16 Jul 2019 15:47:48 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182856.21688-19-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_004803_628004_4AD1AD60 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IFVzZSBERFIzLTE4
NjYgMkdCIGRkciB0aW1pbmdzIGR0c2kgZm9yIDFHQiBOYW5vUGkgTmVvNCBib2FyZC4KPgo+IFNp
bmNlIHNkcmFtIHJrMzM5OSBzdXBwb3J0IGR5bmFtaWMgc3RyaWRlIGFuZCByYW5rIGRldGVjdGlv
biBpdAo+IGNhbiBhYmxlIHRvIGRldGVjdCAxR0IgZGRyIGV2ZW50b3VnaCB0aGUgdGltaW5ncyBh
cmUgbWVhbnQgZm9yCj4gZHVhbCBjaGFubmVsLCAyR0Igc2l6ZS4KPgo+IEJvb3RjaGFpbiBhZnRl
ciBhbmQgYmVmb3JlIHRoaXMgY2hhbmdlIGFyZToKPgo+ICAgVFBMIC0+IFNQTCAtPiBVLUJvb3Qg
cHJvcGVyCj4KPiAgIHJrYmluIC0+IFNQTCAtPiBVLUJvb3QgcHJvcGVyCj4KPiBUaGlzIGNlcnRh
aW5seSBmaXggdGhlIHNlY29uZCBjaGFubmVsIGRhdGEgdHJhaW5pbmcgaW5pdGlhbGl6YXRpb24K
PiBzaW5jZSB3ZSBoYXZlIGR5bmFtaWMgcmFuaywgc3RyaWRlIHdoZXJlIHNlY29uZCBjaGFubmVs
IGNhcGFiaWxpdGllcwo+IGFyZSBjbGVhciBvciBtZW1zZXQgdG8gMC4KPgo+IFNpZ25lZC1vZmYt
Ynk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgoKUmV2aWV3ZWQtYnk6
IEtldmVyIFlhbmcgPEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2
ZXIKPiAtLS0KPiAgIGFyY2gvYXJtL2R0cy9yazMzOTktbmFub3BpLW5lbzQtdS1ib290LmR0c2kg
fCAxICsKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2R0cy9yazMzOTktbmFub3BpLW5lbzQtdS1ib290LmR0c2kgYi9hcmNoL2FybS9k
dHMvcmszMzk5LW5hbm9waS1uZW80LXUtYm9vdC5kdHNpCj4gaW5kZXggN2QyMjUyOGY0OS4uZWIw
YWNhNDc1OCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9kdHMvcmszMzk5LW5hbm9waS1uZW80LXUt
Ym9vdC5kdHNpCj4gKysrIGIvYXJjaC9hcm0vZHRzL3JrMzM5OS1uYW5vcGktbmVvNC11LWJvb3Qu
ZHRzaQo+IEBAIC00LDMgKzQsNCBAQAo+ICAgICovCj4gICAKPiAgICNpbmNsdWRlICJyazMzOTkt
bmFub3BpNC11LWJvb3QuZHRzaSIKPiArI2luY2x1ZGUgInJrMzM5OS1zZHJhbS1kZHIzLTE4NjYu
ZHRzaSIKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
