Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46355FD679
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 Nov 2019 07:34:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a56t5/jnp+68XlKEXgJrapk6aUCjTaQHR1Q7/pLPvZE=; b=dpNszN5mUE3Idbsxrsj46PnBl
	jR4JEjXonKHTpHC2nLQdXAGy4gdVd/F/IQVqeSn0U9GB0aq5PdNStxa3KnGMTtI9hC3Jr7TI0cTls
	tCH81mtlaOBrBOkH3cztTFvLse54vxGlUmOzYGq3IP2cXgi9zCxgnxRbJ98gjuCYr0McdNy/7XkWs
	aUD9t4qY8anl8eZamf/1/dT36IYj1iIaGg/90+RyFHJgsMCbvAJ/Y3O1IicUYri2oKWA2BMbZc/qW
	uU4DeliJpo/n7vrlcQm7tDbYg7aexaC1LW+5Y/fC5bh+WEtt/jt0+brpv9NyZeRZDByf2ygTD9DN/
	Lca23svsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVVBz-0001Ky-8a; Fri, 15 Nov 2019 06:34:51 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVVBt-0001KZ-Uh
 for linux-rockchip@lists.infradead.org; Fri, 15 Nov 2019 06:34:49 +0000
Received: from localhost (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 86C0329C;
 Fri, 15 Nov 2019 14:34:32 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P23561T140362251224832S1573799663966191_; 
 Fri, 15 Nov 2019 14:34:30 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <65e891c77dfa674642c67b30aca32fd0>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [U-Boot] [PATCH v3 2/5] Makefile: Rename idbloader.img with
 u-boot-spl-rockchip.bin
To: Jagan Teki <jagan@amarulasolutions.com>,
 Mark Kettenis <mark.kettenis@xs4all.nl>
References: <20191017190710.29985-1-jagan@amarulasolutions.com>
 <20191017190710.29985-3-jagan@amarulasolutions.com>
 <7e1e42fd-a4e3-4b3c-8d7b-82f3ad7551cd@rock-chips.com>
 <CAMty3ZDZ_P-soW2poo3nJ8PF=3Wxe0RoGzW7B_xDTkZx8UCm8Q@mail.gmail.com>
 <51fabf8ac7d59d16@bloch.sibelius.xs4all.nl>
 <CAMty3ZCrcExQ+KmvWR_0Rus6hLAXySMu2hoGpUHLEBAZaO4kEw@mail.gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <8a85f647-27eb-7260-8dc5-25074e5cf880@rock-chips.com>
Date: Fri, 15 Nov 2019 14:34:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAMty3ZCrcExQ+KmvWR_0Rus6hLAXySMu2hoGpUHLEBAZaO4kEw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_223446_428724_B4ED0927 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.198 listed in list.dnswl.org]
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
Cc: Tom Rini <trini@konsulko.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 U-Boot-Denx <u-boot@lists.denx.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSmFnYW4sCgpPbiAyMDE5LzEwLzIyIOS4i+WNiDY6MTAsIEphZ2FuIFRla2kgd3JvdGU6Cj4g
T24gTW9uLCBPY3QgMjEsIDIwMTkgYXQgMTo0MyBQTSBNYXJrIEtldHRlbmlzIDxtYXJrLmtldHRl
bmlzQHhzNGFsbC5ubD4gd3JvdGU6Cj4+PiBGcm9tOiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxh
c29sdXRpb25zLmNvbT4KPj4+IERhdGU6IE1vbiwgMjEgT2N0IDIwMTkgMTA6NTY6MzkgKzA1MzAK
Pj4+Cj4+PiBIaSBLZXZlciwKPj4+Cj4+PiBPbiBGcmksIE9jdCAxOCwgMjAxOSBhdCA0OjI2IFBN
IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Pj4+IEphZ2Fu
LAo+Pj4+Cj4+Pj4KPj4+PiBPbiAyMDE5LzEwLzE4IOS4iuWNiDM6MDcsIEphZ2FuIFRla2kgd3Jv
dGU6Cj4+Pj4+IGlkYmxvYWRlci5pbWcgbmFtZSBpcyBzcGVjaWZpYyB0byByb2NrY2hpcCwKPj4+
PiBUaGlzIGlzIHNwZWNpZmljIGZvciByb2NrY2hpcCwgbGlrZSBya3NkLCBya3NwaSB0eXBlIGlu
IG1raW1hZ2UsIHNpbmNlCj4+Pj4gaXQncyBjbGVhciBmb3Igd2hhdCBpdCBzdGFuZHMgZm9yLAo+
Pj4+Cj4+Pj4gSSB0aGluayBpdCBjYW4gYWxzbyB1c2VkIGluIFUtQm9vdC4KPj4+Pgo+Pj4+PiB3
aGVyZSBpdCB1c3VhbGx5Cj4+Pj4+IGNyZWF0ZWQgdXNpbmcgcm9ja2NoaXAgdG9vbHMuCj4+Pj4K
Pj4+PiBObywgaWRibG9hZGVyIHN0YW5kcyBmb3IgdGhlIGltYWdlIHdpdGggaWRiIGhlYWRlciBw
YWNrYWdlZCB3aXRoIHR3bwo+Pj4+IHN0YWdlIGxvYWRlciwgZWcuIFRQTCtTUEwKPj4+Pgo+Pj4+
IG9yIGRkci5iaW4rbWluaWxvYWRlci5iaW4sIGFuZCBtYXliZSBkZHIuYmluICsgU1BM77yMIFRQ
TCttaW5pbG9hZGVyLmJpbiwKPj4+Pgo+Pj4+IG5vdCByZWxhdGVkIHRvIHJvY2tjaGlwIHRvb2xz
LCBpdCBjYW4gYWxzbyBiZSBjcmVhdGVkIHdpdGggVS1Cb290Cj4+Pj4gbWtpbWFnZSB0b29sLgo+
Pj4gSSB1bmRlcnN0YW5kIHdoYXQgaWRibG9hZGVyIGNvbnRhaW5zLCBpdCBpcyBsaWtlIHJvY2tj
aGlwIFNQTC4gYnV0IHRoZQo+Pj4gbWFpbiBjb25jZXJuIGhlcmUgaXMgdGhlIG5hbWluZyBjb252
ZW50aW9uIHVzZWQgaW4gVS1Cb290LiBJdCB3b3VsZCBiZQo+Pj4gYSBzdGFuZGFyZCB3YXkgb2Yg
dXNpbmcgbmFtaW5nIGNvbnZlbnRpb25zIHdoZXJlIHRoZSBmaW5hbCBvdXRwdXQKPj4+IG5hbWlu
ZyBjb252ZW50aW9ucyBzaG91bGQgaGF2ZSB1LWJvb3Qgc3VwcG9ydCBzdGFnZXMoVFBMLCBTUEws
IFUtQm9vdCkKPj4+IGFuZCBwbGF0Zm9ybSBzcGVjaWZpYyBuYW1lLiBUaGlzIHdheSBpdCBpcyBs
ZXNzIGNvbmZ1c2VkIHdoYXQgZXhhY3RseQo+Pj4gaXQgY29udGFpbnMuCj4+Pgo+Pj4gTW9yZW92
ZXIgbW9zdCBvZiB0aGUgcGxhdGZvcm0gc3BlY2lmaWMgYmluIGVuZGVkIHVwIHVzaW5nIHRoaXMg
dHlwZSBvZgo+Pj4gY29udmVudGlvbnMuCj4+Pgo+Pj4gLSB1LWJvb3Qtc3BsLW10ay5iaW4gLSBN
ZWRpYXRlayBTUEwgYmluCj4+PiAtIHUtYm9vdC1tdGsuYmluIC0gTWVkaWF0ZWsgVS1Cb290IGJp
biAod291bGQgYmUgZmluYWwgaW1hZ2UpCj4+PiAtIHUtYm9vdC1zdW54aS13aXRoLXNwbC5iaW4g
LSBBbGx3aW5uZXIgVS1Cb290IHdpdGggU1BMCj4+PiAtIHUtYm9vdC14ODYtc3RhcnQxNi10cGwu
YmluCj4+IE5vIHJlYWwgY29uc2lzdGVuY3kgdGhlcmUgdGhvdWdoLi4uCj4gTm90IHN1cmUgd2hh
dCB5b3UgcG9pbnRlZCBoZXJlLCBlYWNoIGJpbiBsaXN0ZWQgYWJvdmUgc2hvd3MgdGhlCj4gcGxh
dGZvcm0gYW5kIHUtYm9vdCBzdGFnZSBhbmQgcHJlZml4IHdpdGggdS1ib290LSBhcyB3ZWxsLiBv
ZiBjb3Vyc2UKPiBhbGwgY2FuJ3QgbWFpbnRhaW4gdGhlIHNhbWUgYnV0IGhhcyBtZW50aW9uZWQg
ZGV0YWlscy4KVGhlIGltYWdlIGZvciBWZW5kb3IncyBCb290Um9tIGlzIGFsd2F5cyB2ZW5kb3Ig
c3BlY2lmaWMsIHNvIEkgZG9uJ3QgCnRoaW5rIGludmVudAphIG5ldyBuYW1lIGZvciBpZGJsb2Fk
ZXIuaW1nIG1ha2UgYW55IHNlbnNlLgpJIGtub3cgd2hhdCdzIHRoZSB1LWJvb3QuYmluLCB1LWJv
b3QuaXRiLCB1LWJvb3Qtc3BsLmJpbiwgCnUtYm9vdC10cGwuYmluLCBiZWNhdXNlIGFsbCB0aGUK
Ym9hcmRzIHVzZSB0aGVtIGluIHRoZSBzYW1lIHdheSzCoCBidXQgSSBkb24ndCBrbm93IHdoYXQg
aXMgCnUtYm9vdC1zcGwtbXRrLmJpbiBvciB1LWJvb3Qtc3VueGktd2l0aC1zcGwuYmluLAphbmQg
YWxzbyBuYW1lcyBsaWtlIGxwYzMyeHgtKioqLCBiZWNhdXNlIHRoZXkgYWx3YXlzIHNwZWNpZmlj
IGZvciB0aGUgClNvQyB2ZW5kb3IsIHBlb3BsZSBuZXZlciBrbm93CndoYXQgaXQncyBiZWZvcmUg
dGhleSB3b3JrIG9uIHRoaXMgcGxhdGZvcm0uCkZvcsKgIGlkYmxvYWRlci5pbWcsIGl0IGFscmVh
ZHkgdXNlZCBmb3LCoCBhIHBlcmlvZCBvZiB0aW1lLCBpdCdzIGRvY3VtZW50IAppbiBib3RoIFJv
Y2tjaGlwIGRvY3VtZW50CmFuZCBVLUJvb3QgZG9jdW1lbnQsIGRldmVsb3BlcnMga25vdyB3aGF0
IGl0J3Mgd2hlbiB0aGV5IHNlZSB0aGlzIG5hbWUsIApJIGRvbid0IHRoaW5rIGFkZCBhIG5ldwpu
YW1lIGZvciBpdCBhbmQgYWRkIGEgbmV3IGRvY3VtZW50IGFuZCBkaXNjYXJkcyB0aGUgZG9jdW1l
bnQgd2l0aCBvbGQgCm5hbWUgaXMgYSBnb29kIGlkZWEsCml0IG9ubHkgY29uZnVzZSBkZXZlbG9w
ZXJzLiBZb3UgY2FuIGhhdmUgYSBuZXcgbmFtZSBmb3IgYmlubWFuIG91dHB1dMKgIApmb3IgdGhh
dCdzIG5ldyBvdXRwdXQsCmJ1dCBJIHdvdWxkIGxpa2Ugbm90IHRvIGludmVudCBuZXcgbmFtZSBm
b3IgaWRibG9hZGVyIHVudGlsIG1vc3Qgb2YgCmRldmVsb3BlcnMgdGhpbmsgdGhhdCdzIHJlYWxs
eQpuZWNlc3NhcnkuCgoKVGhhbmtzLAotIEtldmVyCj4KPj4+IFNpbWlsYXIgbmFtaW5nIGNvbnZl
bnRpb25zIHVzZWQgZm9yIHRlZ3JhLCB4ODYgZXRjLgo+Pj4KPj4+IEknbSBjb21wbGV0ZWx5IGF3
YXJlIG9mIHdoYXQgeW91J3JlIHRyeWluZyB0byBhYmJyZXZpYXRlCj4+PiBpZGJsb2FkZXIuaW1n
LCBidXQgaGF2aW5nIHUtYm9vdC1zcGwtcm9ja2NoaXAuYmluIGlzIG1vcmUgcmVhZGFibGUgYW5k
Cj4+PiB1bmRlcnN0YW5kIHRoYW4gaWRibG9hZGVyLgo+PiBBcyB3YXMgZGlzY3Vzc2VkIGJlZm9y
ZSwgaWRibG9hZGVyLmltZyBpcyB0aGUgbmFtZSB1c2VkIGluIGV4dGVybmFsCj4+IGRvY3VtZW50
YXRpb24uCj4gWWVzLCB1c2VkIGluIGV4dGVybmFsIGRvY3VtZW50YXRpb24uIHdoZW4gaXQgY29t
ZXMgdG8gdXBzdHJlYW0gaXQKPiB3b3VsZCBmb2xsb3cgYXMgcGVyIGV4aXN0aW5nIHBsYXRmb3Jt
cyBkb2VzIGF0bGVhc3QuCj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
