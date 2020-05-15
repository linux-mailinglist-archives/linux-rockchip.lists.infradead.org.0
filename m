Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2505B1D43B8
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 May 2020 04:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MWDKVnumZvb0KjI8fXrz71fIMap1NRWhXEGYVR/M0oI=; b=sj0ORbL5cXORL+S1DS8tB0w18
	OQLALRk3TYiwFx+R3aRjHSBF+9dMs/zL5i7HDdymNxpJMmK2V9UgQJzsk4JHJRawxGV2CShh76OmP
	kHPH2Zzbn0YBTEFqJGtyHezboi+kDl4dJUYdMSfy4IzrZnQhlgyFp1Sknxk7RtTgPtQnpMyHc4Y1a
	I0BPnkOfYPYgQuCy8AVSibYF5eSGI8crLDUXuUoh9qo6XcUEkyL3efZ4qhtarKFIdMWNTmwvqLiFQ
	Y/vXFq7fLfPgGqbEJCMXqDdICauRdDfBkvFwKjNAsGFG/FWbdlT7Ad1ToUIlloJEhZgcN5K9h75Ht
	TLiemfpRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZQPt-0000X3-Gq; Fri, 15 May 2020 02:49:41 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZQPq-0000WZ-8C
 for linux-rockchip@lists.infradead.org; Fri, 15 May 2020 02:49:39 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id E4353405;
 Fri, 15 May 2020 10:49:35 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P33526T140426103224064S1589510960243749_; 
 Fri, 15 May 2020 10:49:34 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c00001d184b1c7da8ab390d440189e28>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: wmc@rock-chips.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v5 10/16] usb: dwc3: Enable AutoRetry feature in the
 controller
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de, marex@denx.de,
 bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com,
 klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com,
 sjg@chromium.org
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
 <20200513071710.5651-1-frank.wang@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <73528126-907e-bcfa-80d8-195d5405b570@rock-chips.com>
Date: Fri, 15 May 2020 10:49:19 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200513071710.5651-1-frank.wang@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_194938_530617_1701FDDF 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.202 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.150.70.202 listed in wl.mailspike.net]
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

Ck9uIDIwMjAvNS8xMyDkuIvljYgzOjE3LCBGcmFuayBXYW5nIHdyb3RlOgo+IEZyb206IEphZ2Fu
IFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+Cj4gQnkgZGVmYXVsdCB3aGVuIGNv
cmUgc2VlcyBhbnkgdHJhbnNhY3Rpb24gZXJyb3IgKENSQyBvciBvdmVyZmxvdykgaXQKPiByZXBs
aWVzIHdpdGggdGVybWluYXRpbmcgcmV0cnkgQUNLIChSZXRyeT0xIGFuZCBOdW1wID09IDApLgo+
Cj4gRW5hYmxpbmcgdGhpcyBBdXRvIFJldHJ5IGZlYXR1cmUgaW4gY29udHJvbGxlciB3aWxsIG1h
a2UgdGhlIGNvcmUgc2VuZAo+IGEgbm9uLXRlcm1pbmFudGluZyBBQ0sgdXBvbiBzdWNoIHRyYW5z
YWN0aW9uIGVycm9ycy4gVGhhdCBpcywgQUNLIFRQCj4gd2l0aCBSZXRyeT0xIGFuZCBOdW1wICE9
IDAuCj4KPiBEb2luZyBzbyB3aWxsIGdpdmUgY29udHJvbGxlciBhIGNoYW5jZSB0byByZWNvdmVy
IGZyb20gdHJhbnNpZW50IGVycm9yCj4gY29uZGl0aW9ucy4KPgo+IFJlZmVyZW5jZSBmcm9tIGJl
bG93IExpbnV4IGNvbW1pdCwKPgo+IGNvbW1pdCA8YjEzOGUyM2QzZGZmPiAoInVzYjogZHdjMzog
Y29yZTogRW5hYmxlIEF1dG9SZXRyeSBmZWF0dXJlCj4gaW4gdGhlIGNvbnRyb2xsZXIiKQo+Cj4g
Q2M6IE1hcmVrIFZhc3V0IDxtYXJleEBkZW54LmRlPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRl
a2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcg
PGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCi0gS2V2ZXIKPiAtLS0KPiAgIGRy
aXZlcnMvdXNiL2R3YzMvY29yZS5jIHwgOSArKysrKysrKysKPiAgIGRyaXZlcnMvdXNiL2R3YzMv
Y29yZS5oIHwgMyArKysKPiAgIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2R3YzMvY29yZS5jIGIvZHJpdmVycy91c2IvZHdjMy9j
b3JlLmMKPiBpbmRleCBkYzkyZjQ3MWMxLi5hYWI2YzM0YzJkIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvdXNiL2R3YzMvY29yZS5jCj4gKysrIGIvZHJpdmVycy91c2IvZHdjMy9jb3JlLmMKPiBAQCAt
OTk1LDYgKzk5NSwxNSBAQCBpbnQgZHdjM19pbml0KHN0cnVjdCBkd2MzICpkd2MpCj4gICAJCWR3
YzNfd3JpdGVsKGR3Yy0+cmVncywgRFdDM19HVUNUTDEsIHJlZyk7Cj4gICAJfQo+ICAgCj4gKwlp
ZiAoZHdjLT5kcl9tb2RlID09IFVTQl9EUl9NT0RFX0hPU1QgfHwKPiArCSAgICBkd2MtPmRyX21v
ZGUgPT0gVVNCX0RSX01PREVfT1RHKSB7Cj4gKwkJcmVnID0gZHdjM19yZWFkbChkd2MtPnJlZ3Ms
IERXQzNfR1VDVEwpOwo+ICsKPiArCQlyZWcgfD0gRFdDM19HVUNUTF9IU1RJTkFVVE9SRVRSWTsK
PiArCj4gKwkJZHdjM193cml0ZWwoZHdjLT5yZWdzLCBEV0MzX0dVQ1RMLCByZWcpOwo+ICsJfQo+
ICsKPiAgIAlyZXQgPSBkd2MzX2NvcmVfaW5pdF9tb2RlKGR3Yyk7Cj4gICAJaWYgKHJldCkKPiAg
IAkJZ290byBtb2RlX2ZhaWw7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2R3YzMvY29yZS5o
IGIvZHJpdmVycy91c2IvZHdjMy9jb3JlLmgKPiBpbmRleCBiNTEwZDhhOTgzLi4yYWRjYWYwMDI5
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdXNiL2R3YzMvY29yZS5oCj4gKysrIGIvZHJpdmVycy91
c2IvZHdjMy9jb3JlLmgKPiBAQCAtMTYwLDYgKzE2MCw5IEBACj4gICAjZGVmaW5lIERXQzNfR0NU
TF9HQkxISUJFUk5BVElPTkVOCSgxIDw8IDEpCj4gICAjZGVmaW5lIERXQzNfR0NUTF9EU0JMQ0xL
R1RORwkJKDEgPDwgMCkKPiAgIAo+ICsvKiBHbG9iYWwgVXNlciBDb250cm9sIFJlZ2lzdGVyICov
Cj4gKyNkZWZpbmUgRFdDM19HVUNUTF9IU1RJTkFVVE9SRVRSWQlCSVQoMTQpCj4gKwo+ICAgLyog
R2xvYmFsIFVzZXIgQ29udHJvbCAxIFJlZ2lzdGVyICovCj4gICAjZGVmaW5lIERXQzNfR1VDVEwx
X1RYX0lQR0FQX0xJTkVDSEVDS19ESVMJQklUKDI4KQo+ICAgI2RlZmluZSBEV0MzX0dVQ1RMMV9E
RVZfTDFfRVhJVF9CWV9IVwlCSVQoMjQpCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
