Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B0419BE79
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 11:18:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VzOpGuQ7eEWtKwivM7E8gDyl6z8XXmOOugbCf39To3E=; b=QooIavGh7FHYWjVu+/MEVGkGJ
	ICw28byOVdN2z+l/4GlQqSBNWmjgW+wprh+gTo0piYb5o+JSzpic4ziHx8L3d7m5eq6CE1jlhv2YG
	iYgp9qiOPq6kem/7zkdY08QhOy1+G+6rVBUYRXgXKkkkjLHvibyYkcei3m1PHpUZGlcoZg2AbuTm/
	t0OvYcBimp9Ts00T4HoniJSqiCWCkOl2aREnIYV74hS/B7rmH5gEbEWekkxq4/aAKmt+xtvi/QwpL
	Thathm/Ie6eUxhNukNS1+WlrHQlKb/9YtAJw5lmNeOYQJ5EJuShxanfYvnsEjAEqLHHYLNsV9TOpu
	CWMJ4K41Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJvzT-0001jJ-Mx; Thu, 02 Apr 2020 09:18:23 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJvzQ-0001g8-B2
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 09:18:21 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id EC6C73AD;
 Thu,  2 Apr 2020 17:18:04 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31088T139854268593920S1585819083764159_; 
 Thu, 02 Apr 2020 17:18:05 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a79d0e4555a19bfc81c34380bf88b98c>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 1/4] arm64: dts: rk3399-u-boot: Delete vop
 assigned-clocks/rates
To: Jagan Teki <jagan@amarulasolutions.com>,
 Mark Kettenis <mark.kettenis@xs4all.nl>
References: <20200330181613.29462-1-jagan@amarulasolutions.com>
 <20200330181613.29462-2-jagan@amarulasolutions.com>
 <016151d6786a0ea4@bloch.sibelius.xs4all.nl>
 <CAMty3ZCHTk5H60cNmUhfq=pNwBJ9Kc1KuGGb=gQFCp2SS3_1gw@mail.gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <103f3c97-e223-6718-bb08-0aa2395145a2@rock-chips.com>
Date: Thu, 2 Apr 2020 17:18:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAMty3ZCHTk5H60cNmUhfq=pNwBJ9Kc1KuGGb=gQFCp2SS3_1gw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_021820_560900_579459CA 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.201 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: Anatolij Gustschin <agust@denx.de>, U-Boot-Denx <u-boot@lists.denx.de>,
 Simon Glass <sjg@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSmFnYW4sCgpPbiAyMDIwLzMvMzEg5LiL5Y2IMTo1OSwgSmFnYW4gVGVraSB3cm90ZToKPiBP
biBUdWUsIE1hciAzMSwgMjAyMCBhdCAxOjA2IEFNIE1hcmsgS2V0dGVuaXMgPG1hcmsua2V0dGVu
aXNAeHM0YWxsLm5sPiB3cm90ZToKPj4+IEZyb206IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFz
b2x1dGlvbnMuY29tPgo+Pj4gQ2M6IHN1bmlsQGFtYXJ1bGFzb2x1dGlvbnMuY29tLCB1LWJvb3RA
bGlzdHMuZGVueC5kZSwKPj4+ICAgICAgICAgIGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcsIGxpbnV4LWFtYXJ1bGFAYW1hcnVsYXNvbHV0aW9ucy5jb20sCj4+PiAgICAgICAgICBK
YWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPj4+IERhdGU6IE1vbiwgMzAg
TWFyIDIwMjAgMjM6NDY6MTAgKzA1MzAKPj4+IENvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hh
cnNldD1VVEYtOAo+Pj4KPj4+IExpbnV4IHN1cHBvcnRpbmcgYXNzaWduZWQtY2xvY2tzIGZvciBW
T1Agb24gcmszMzk5IGJ5IGFzc3VtaW5nCj4+PiBVLUJvb3Qgbm90IGluaXRpYWxpemluZyBpdCBv
biB0aGlzIGxpbnV4IGNvbW1pdDoKPj4+Cj4+PiBjb21taXQgPDYxN2Y0NDcyYmRkMz4gKCJhcm02
NDogZHRzOiByb2NrY2hpcDogaW5pdCByazMzOTkgdm9wIGNsb2NrIHJhdGVzIikKPj4+Cj4+PiBU
aGVyZSBpcyBubyBzcGVjaWZpYyBuZWVkIHRvIGluaXRpYWxpemUgdGhlc2UgYXNzaWduZWQgY2xv
Y2sKPj4+IGluIFUtQm9vdCBhcyB2aWRlbyBkcml2ZXJzIHN0aWxsIHdvcmsgd2l0aCBkZWZhdWx0
IGFjbGsgYW5kCj4+PiBoY2xrIHZhbHVlcy4gU28sIHRoZXNlIGNsb2NrcyBhcmUgc2ltcGx5IG5v
dCBzdXBwb3J0ZWQgYnkgcmszMzk5Cj4+PiBjbG9jayBkcml2ZXIuCj4+Pgo+Pj4gQnV0LCBkdXJp
bmcgc3RkaW8gcHJvYmUgb2YgdmlkY29uc29sZSwgdGhlIGRldmljZSBwcm9iZQo+Pj4gd2lsbCB0
cnkgdG8gY2hlY2sgd2hldGhlciB0aGUgYXNzaWduZWQgY2xvY2tzIG9uIHRoYXQgdmlkZW8KPj4+
IGNvbnNvbGUgbm9kZSBpcyBpbml0aWFsaXplZCBvciBub3Q/IGFuZCByZXR1cm4gZXJyb3IgaWYg
bm90Lgo+Pj4KPj4+IFNvLCBkZWxldGUgdGhlc2UgcHJvcGVydHkgdmlhIC11LWJvb3QgZHRzaSBh
cyB0aGVyZSBpcwo+Pj4gbm8gc3BlY2lmaWMgbmVlZCBpbiBVLUJvb3QuCj4+IERlbGV0aW5nIHRo
ZXNlIHByb3BlcnRpZXMgaXNuJ3QgdmVyeSBoZWxwZnVsIGFzIGl0IG1lYW5zIHRoZSBVLUJvb3QK
Pj4gZGV2aWNlIHRyZWUgY2FuIG5vIGxvbmdlciBiZSB1c2VkIGJ5IHRoZSBrZXJuZWwuICBJc24n
dCBpdCBhIGJldHRlcgo+PiBpZGVhIHRvIGltcGxlbWVudCB0aGVzZSBjbG9ja3MgYXMgc3R1YnMg
aW4gdGhlIHUtYm9vdCBjbG9jayBkcml2ZXI/Cj4gSSBkaWQgdHJ5IHRoaXMgYmVmb3JlIHNvcnRp
bmcgb3V0IHRoZXNlIGNoYW5nZXMsIHNlZW1zIGxpa2UgaXQKPiByZXF1aXJlcyBhIGJpdCBtb3Jl
IHR3ZWFraW5nIHRoZSBjbG9jayB3cnQgZGlzcGxheSBjb2RlLiBJIHJlYWxseQo+IGRpZG4ndCBz
ZWUgYW55IHVzZSBjYXNlIGFzIG9mIG5vdyBmb3IganVzdCB0byBwcmludCB1LWJvb3QgbG9nIG9u
Cj4gZGlzcGxheSBvdXQsIGFuZCBtb3JlIG92ZXIgdGhpcyBzdXBwb3J0IGhhcyBiZWVuIGJyb2tl
biBzaW5jZSBmcm9tCj4gcmVsZWFzZXMuIHNvIGJ5cGFzc2luZyB0aGVzZSBub2RlcyBjYW4gYmUg
YSBzb2x1dGlvbnMgZm9yIG5vdy4KCgpJIGFncmVlIHdpdGggTWFyayBmb3Igbm90IHRvdWNoIHRo
ZSBkdHMgZmlyc3QuIEkgZG9uJ3Qga25vdyB0aGUgZGV0YWlsIApvZiBkaXNwbGF5IGRyaXZlciBi
dXQ6CgotIFRoZSByazMzOTkgZHJpdmVyIHVzZSB0byB3b3JrIHdpdGhvdXQgdG91Y2ggZHRzIGZy
b20ga2VybmVsOwoKLSB0aGUgY2xvY2sgZHJpdmVyIGhhdmUgYSByazMzOTlfdm9wX3NldF9jbGso
KSB3aGljaCBkb2VzIG5vdCBkZXBlbmRzIG9uIApkdHMuCgoKVGhhbmtzLAoKLSBLZXZlcgoKPgo+
IEphZ2FuLgo+Cj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
