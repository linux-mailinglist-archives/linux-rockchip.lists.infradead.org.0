Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463D1140427
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 Jan 2020 07:53:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BD9wO/QtWgBbCmmi3qbJ3Yh9xHKlsAlQF3/3sy5AYeU=; b=UnviqO9MFeaoW4QPoqNzt+l9/
	ujkwhgQ22ywvAE/xo0Bv1JFhiSFPK2Rgvu9166miqvqsLI3bfVdONygzd3abn9Sbo6tiUsg0vw9e+
	vN4LyqiW37HRgao1BOCx+6cmrYGLEWMdAm6kudBatJOWaVKjGl7QJ1rpzhsRbdhZkIc3v4zLEoWY2
	y3FFVpPL9u9RTiLlBwecn6tk2F/uhj+3Fes7nKedkKH0Kg/htLM0w4wAr2mifZkMwRCUCIZHfAVHE
	C0lybN/t+rlgRR6VjJnCeBnIZwk9hgKQs9NAB5ltWPE7GzN1BqO5TauK9gI6jalx4twmw641/nVwS
	7e6xzJs4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isLVV-0006Sp-Hv; Fri, 17 Jan 2020 06:53:25 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isLVR-0006SS-L3
 for linux-rockchip@lists.infradead.org; Fri, 17 Jan 2020 06:53:23 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id A33583B2;
 Fri, 17 Jan 2020 14:53:16 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P19896T140279015253760S1579243996042524_; 
 Fri, 17 Jan 2020 14:53:16 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <fe75a5b9292047a86bf2a9e807711209>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v7 5/7] arm: dts: rk3188: Add rk3188-u-boot.dtsi
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200109184622.3098-1-jagan@amarulasolutions.com>
 <20200109184622.3098-6-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <dac808a1-f96d-e5e7-f565-6ba88ad1bb86@rock-chips.com>
Date: Fri, 17 Jan 2020 14:53:15 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200109184622.3098-6-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_225322_477491_BED8396A 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.201 listed in list.dnswl.org]
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

Ck9uIDIwMjAvMS8xMCDkuIrljYgyOjQ2LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBVLUJvb3Qg
c3BlY2lmaWMgZHRzaSBmaWxlIGZvciByazMxODggU29DLiBUaGlzCj4gd291bGQgaGVscCB0byBh
ZGQgVS1Cb290IHNwZWNpZmljIGR0cyBub2RlcywgcHJvcGVydGllcwo+IHdoaWNoIGFyZSBjb21t
b24gYWNyb3NzIHJrMzE4OC4KPgo+IFJpZ2h0IG5vdywgdGhlIGZpbGUgaXMgZW1wdHksIHdpbGwg
YWRkIHJlcXVpcmVkIGNoYW5nZXMKPiBpbiBmdXR1cmUgcGF0Y2hlcy4KPgo+IFNpZ25lZC1vZmYt
Ynk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgpSZXZpZXdlZC1ieTog
S2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+
IC0tLQo+ICAgYXJjaC9hcm0vZHRzL3JrMzE4OC1yYWR4YXJvY2stdS1ib290LmR0c2kgfCAyICsr
Cj4gICBhcmNoL2FybS9kdHMvcmszMTg4LXUtYm9vdC5kdHNpICAgICAgICAgICB8IDQgKysrKwo+
ICAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0
NCBhcmNoL2FybS9kdHMvcmszMTg4LXUtYm9vdC5kdHNpCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0vZHRzL3JrMzE4OC1yYWR4YXJvY2stdS1ib290LmR0c2kgYi9hcmNoL2FybS9kdHMvcmszMTg4
LXJhZHhhcm9jay11LWJvb3QuZHRzaQo+IGluZGV4IDFiYjU0MDg1OTIuLjIwNGJiM2E5MGUgMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9hcm0vZHRzL3JrMzE4OC1yYWR4YXJvY2stdS1ib290LmR0c2kKPiAr
KysgYi9hcmNoL2FybS9kdHMvcmszMTg4LXJhZHhhcm9jay11LWJvb3QuZHRzaQo+IEBAIC0zLDYg
KzMsOCBAQAo+ICAgICogQ29weXJpZ2h0IChjKSAyMDE4IEZ1emhvdSBSb2NrY2hpcCBFbGVjdHJv
bmljcyBDby4sIEx0ZC4KPiAgICAqLwo+ICAgCj4gKyNpbmNsdWRlICJyazMxODgtdS1ib290LmR0
c2kiCj4gKwo+ICAgJmNydSB7Cj4gICAJdS1ib290LGRtLXNwbDsKPiAgIH07Cj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL2R0cy9yazMxODgtdS1ib290LmR0c2kgYi9hcmNoL2FybS9kdHMvcmszMTg4
LXUtYm9vdC5kdHNpCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwLi4x
ZTdkMDc5MzE1Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2FyY2gvYXJtL2R0cy9yazMxODgtdS1i
b290LmR0c2kKPiBAQCAtMCwwICsxLDQgQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IEdQTC0yLjArCj4gKy8qCj4gKyAqIENvcHlyaWdodCAoQykgMjAxOSBKYWdhbiBUZWtpIDxqYWdh
bkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiArICovCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
