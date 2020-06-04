Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 000B41EDB94
	for <lists+linux-rockchip@lfdr.de>; Thu,  4 Jun 2020 05:14:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uUFt2LTUbBVYPdpiOGoR2h4MFTiN9r1MILChvLwZhbE=; b=UneaKNq4Jv5xZZgHhK5YjJb40
	7TYhBqeq3U4/TrpNFmB2f/uazE5Y+I37X0A5nznMWRUCHkh9vfyn5wrIIfxcov/tlr8qkjRmluhEo
	v07qlvtDNNtbZiRW2FPAof9QmCDbj+bWJWAb1/7mOQ1eLNmwWWWGL9N8A/McMtgNwb49Tdix9YPMR
	+1cqtjxF3oBeCcCHmADPszrOw7yxJCt8RTyDft7WJb57SiRhM6o9FZbrTPAIFrei4BC9bEe3GyZqG
	pALlHZj7jRAMQnUOQhpn/1tZ4CWUZKPRIsKrNHqFV7KyIgvjHsCu75ut+t8uKwlgEunYguXts9iS1
	yaZW189ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jggKn-0000kX-K0; Thu, 04 Jun 2020 03:14:25 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jggKk-0000cI-8m
 for linux-rockchip@lists.infradead.org; Thu, 04 Jun 2020 03:14:23 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id B80ED6A7;
 Thu,  4 Jun 2020 11:14:12 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P766T139943693240064S1591240446923438_; 
 Thu, 04 Jun 2020 11:14:13 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a3f3d72d3c1caf9be297ea6241cb7be1>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 2/4] roc-rk3399-pc: Mark default env from SPI
To: Jagan Teki <jagan@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>, Hugh Cole-Baker <sigmaris@gmail.com>
References: <20200601204213.466120-1-jagan@amarulasolutions.com>
 <20200601204213.466120-3-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <ae1e0a20-9055-3f5d-d381-628ce6ffe8d9@rock-chips.com>
Date: Thu, 4 Jun 2020 11:14:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200601204213.466120-3-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_201422_519826_3863ECF4 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [211.150.70.197 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNi8yIOS4iuWNiDQ6NDIsIEphZ2FuIFRla2kgd3JvdGU6Cj4gTWFyayB0aGUgZGVm
YXVsdCBVLUJvb3QgZW52aXJvbm1lbnQgYXMgU1BJIGZsYXNoIHNpbmNlCj4gdGhpcyBpcyBhbiBv
biBib2FyZCBmbGFzaCBkZXZpY2UuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdh
bkBhbWFydWxhc29sdXRpb25zLmNvbT4KClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55
YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVyCj4gLS0tCj4gICBjb25maWdzL3Jv
Yy1wYy1yazMzOTlfZGVmY29uZmlnIHwgMyArKy0KPiAgIGluY2x1ZGUvY29uZmlncy9yb2MtcGMt
cmszMzk5LmggfCA0IC0tLS0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA1
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2NvbmZpZ3Mvcm9jLXBjLXJrMzM5OV9kZWZj
b25maWcgYi9jb25maWdzL3JvYy1wYy1yazMzOTlfZGVmY29uZmlnCj4gaW5kZXggNzZlNzZjMTYw
ZS4uMThjMzQzZjlmOSAxMDA2NDQKPiAtLS0gYS9jb25maWdzL3JvYy1wYy1yazMzOTlfZGVmY29u
ZmlnCj4gKysrIGIvY29uZmlncy9yb2MtcGMtcmszMzk5X2RlZmNvbmZpZwo+IEBAIC0xLDYgKzEs
NyBAQAo+ICAgQ09ORklHX0FSTT15Cj4gICBDT05GSUdfQVJDSF9ST0NLQ0hJUD15Cj4gICBDT05G
SUdfU1lTX1RFWFRfQkFTRT0weDAwMjAwMDAwCj4gK0NPTkZJR19FTlZfU0laRT0weDgwMDAKPiAg
IENPTkZJR19FTlZfT0ZGU0VUPTB4M0Y4MDAwCj4gICBDT05GSUdfUk9DS0NISVBfUkszMzk5PXkK
PiAgIENPTkZJR19UQVJHRVRfUk9DX1BDX1JLMzM5OT15Cj4gQEAgLTI0LDcgKzI1LDcgQEAgQ09O
RklHX0NNRF9USU1FPXkKPiAgIENPTkZJR19TUExfT0ZfQ09OVFJPTD15Cj4gICBDT05GSUdfREVG
QVVMVF9ERVZJQ0VfVFJFRT0icmszMzk5LXJvYy1wYyIKPiAgIENPTkZJR19PRl9TUExfUkVNT1ZF
X1BST1BTPSJwaW5jdHJsLTAgcGluY3RybC1uYW1lcyBjbG9jay1uYW1lcyBpbnRlcnJ1cHQtcGFy
ZW50IGFzc2lnbmVkLWNsb2NrcyBhc3NpZ25lZC1jbG9jay1yYXRlcyBhc3NpZ25lZC1jbG9jay1w
YXJlbnRzIgo+IC1DT05GSUdfRU5WX0lTX0lOX01NQz15Cj4gK0NPTkZJR19FTlZfSVNfSU5fU1BJ
X0ZMQVNIPXkKPiAgIENPTkZJR19TWVNfUkVMT0NfR0RfRU5WX0FERFI9eQo+ICAgQ09ORklHX1JP
Q0tDSElQX0dQSU89eQo+ICAgQ09ORklHX1NZU19JMkNfUk9DS0NISVA9eQo+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL2NvbmZpZ3Mvcm9jLXBjLXJrMzM5OS5oIGIvaW5jbHVkZS9jb25maWdzL3JvYy1w
Yy1yazMzOTkuaAo+IGluZGV4IGQ0Y2JjMzUzMmUuLjU5ZmUyMjI4OWMgMTAwNjQ0Cj4gLS0tIGEv
aW5jbHVkZS9jb25maWdzL3JvYy1wYy1yazMzOTkuaAo+ICsrKyBiL2luY2x1ZGUvY29uZmlncy9y
b2MtcGMtcmszMzk5LmgKPiBAQCAtMTMsMTAgKzEzLDYgQEAKPiAgIAo+ICAgI2luY2x1ZGUgPGNv
bmZpZ3MvcmszMzk5X2NvbW1vbi5oPgo+ICAgCj4gLSNpZiBkZWZpbmVkKENPTkZJR19FTlZfSVNf
SU5fTU1DKQo+IC0jIGRlZmluZSBDT05GSUdfU1lTX01NQ19FTlZfREVWCQkwCj4gLSNlbmRpZgo+
IC0KPiAgICNkZWZpbmUgU0RSQU1fQkFOS19TSVpFCQkJKDJVTCA8PCAzMCkKPiAgIAo+ICAgI2Vu
ZGlmCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
