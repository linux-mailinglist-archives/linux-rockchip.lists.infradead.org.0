Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBAD1290ED
	for <lists+linux-rockchip@lfdr.de>; Mon, 23 Dec 2019 03:30:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LfGPGPFBGMe/qChgWnljg51Zyinarpo6ct7ir/SNLlw=; b=NcQ1pn/oGuYL7UBRXxL9ItjTY
	XP26+g0zzXXk0l5ErWGmKqiT+NqISLFA84ZethQYBghtNwuD4/u1dzG83XoefQ9RITdnwnLARjeTI
	QRIcZO3JU5R/jLD1qZhN8cqLX+U2KbGut6HGe5Ot+oFgwSD45jaqIdXOG8xcBIzfydHEac2WtmgOm
	KxocPQ9yHM2ETGcTQRBRh3swT1hb3uO7sULKDigQhxhBSsl1imCw58tJz8v3PurgIftozXaRnSBZi
	fgvgU5CXyKVPeiMTZXDjlYugknp2RMtF4RZLkzzvmTotzo6+W/BkpB59ib04I65D9w4Wp61mIXQTj
	qf24mUy/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijDU7-0001dw-Ly; Mon, 23 Dec 2019 02:30:15 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijDU2-0001d9-CX
 for linux-rockchip@lists.infradead.org; Mon, 23 Dec 2019 02:30:13 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id CBF712DE;
 Mon, 23 Dec 2019 10:30:06 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P10935T140244743603968S1577068203343150_; 
 Mon, 23 Dec 2019 10:30:04 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7cdfad812128a6a24397283bfefadced>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 01/11] spi: rk: Limit transfers to (64K - 1) bytes
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-2-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <9bec6335-455b-0c62-a68d-a470a3ccdc24@rock-chips.com>
Date: Mon, 23 Dec 2019 10:30:02 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191221075440.6944-2-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_183010_784814_6546DE35 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.201 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTIvMjEg5LiL5Y2IMzo1NCwgSmFnYW4gVGVraSB3cm90ZToKPiBUaGUgUm9ja2No
aXAgU1BJIGNvbnRyb2xsZXIncyBsZW5ndGggcmVnaXN0ZXIgb25seSBzdXBwb3J0cyAxNi1iaXRz
LAo+IHlpZWxkaW5nIGEgbWF4aW11bSBsZW5ndGggb2YgNjRLaUIgKHRoZSBDVFJMUjEgcmVnaXN0
ZXIgaG9sZHMgImxlbmd0aCAtCj4gMSIpLiBUcnlpbmcgdG8gdHJhbnNmZXIgbW9yZSB0aGFuIHRo
YXQgKGUuZy4sIHdpdGggYSBsYXJnZSBTUEkgZmxhc2gKPiByZWFkKSB3aWxsIGNhdXNlIHRoZSBk
cml2ZXIgdG8gaGFuZy4KPgo+IE5vdywgaXQgc2VlbXMgdGhhdCB3aGlsZSB0aGVvcmV0aWNhbGx5
IHdlIHNob3VsZCBiZSBhYmxlIHRvIHByb2dyYW0KPiBDVFJMUjEgd2l0aCAweGZmZmYsIGFuZCBn
ZXQgYSA2NEtpQiB0cmFuc2ZlciwgYnV0IHRoYXQgYWxzbyBzZWVtcyB0bwo+IGNhdXNlIHRoZSBj
b3JlIHRvIGNob2tlLCBzbyBzdGljayB3aXRoIGEgbWF4aW11bSBvZiA2NEsgLSAxIGJ5dGVzIC0t
Cj4gaS5lLiwgMHhmZmZmLgo+Cj4gTm90ZSwgdGhhdCB0aGUgc2l6ZSBpcyBmdXJ0aGVyIGRpdmlk
ZWQgaW50byAnbWludXMgMScgd2hpbGUgd3JpdGluZwo+IGludG8gQ1RSTFIxLgo+Cj4gVGhpcyBj
aGFuZ2UgZml4ZWQgdHdvIGRpZmZlcmVudCByZWFkIGlzc3VlcywKPgo+IDEuIHNmIHJlYWQgZmFp
bHVyZSB3aGVuIHdpdGggPiAweDEwMDAwCj4KPiAyLiBCb290IGZyb20gU1BJIGZsYXNoIGZhaWxl
ZCBkdXJpbmcgc3BpX2ZsYXNoX3JlYWQgY2FsbCBpbgo+ICAgICBjb21tb24vc3BsL3NwbF9zcGku
Ywo+Cj4gT2JzZXJ2ZWQgYW5kIFRlc3RlZCBpbgo+IC0gUm9ja3BybzY0IHdpdGggR2lnYWRldmlj
ZSBmbGFzaAo+IC0gUk9DLVJLMzM5OS1QQyB3aXRoIFdpbmJvbmQgZmxhc2gKPgo+IFNpZ25lZC1v
ZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgoKUmV2aWV3ZWQt
Ynk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCi0gS2V2
ZXIKPiAtLS0KPiAgIGRyaXZlcnMvc3BpL3JrX3NwaS5jIHwgMTAgKysrKysrKystLQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3NwaS9ya19zcGkuYyBiL2RyaXZlcnMvc3BpL3JrX3NwaS5jCj4gaW5kZXgg
YzA0NTM1YWM0NC4uOTVlZWI4MzA3YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3NwaS9ya19zcGku
Ywo+ICsrKyBiL2RyaXZlcnMvc3BpL3JrX3NwaS5jCj4gQEAgLTI3LDYgKzI3LDEyIEBACj4gICAv
KiBDaGFuZ2UgdG8gMSB0byBvdXRwdXQgcmVnaXN0ZXJzIGF0IHRoZSBzdGFydCBvZiBlYWNoIHRy
YW5zYWN0aW9uICovCj4gICAjZGVmaW5lIERFQlVHX1JLX1NQSQkwCj4gICAKPiArLyoKPiArICog
Y3RybHIxIGlzIDE2LWJpdHMsIHNvIHdlIHNob3VsZCBzdXBwb3J0IGxlbmd0aHMgb2YgMHhmZmZm
ICsgMS4gSG93ZXZlciwKPiArICogdGhlIGNvbnRyb2xsZXIgc2VlbXMgdG8gaGFuZyB3aGVuIGdp
dmVuIDB4MTAwMDAsIHNvIHN0aWNrIHdpdGggdGhpcyBmb3Igbm93Lgo+ICsgKi8KPiArI2RlZmlu
ZSBST0NLQ0hJUF9TUElfTUFYX1RSQU5MRU4JCTB4ZmZmZgo+ICsKPiAgIHN0cnVjdCByb2NrY2hp
cF9zcGlfcGFyYW1zIHsKPiAgIAkvKiBSWEZJRk8gb3ZlcnJ1bnMgYW5kIFRYRklGTyB1bmRlcnJ1
bnMgc3RvcCB0aGUgbWFzdGVyIGNsb2NrICovCj4gICAJYm9vbCBtYXN0ZXJfbWFuYWdlc19maWZv
Owo+IEBAIC0zNjcsNyArMzczLDcgQEAgc3RhdGljIGlubGluZSBpbnQgcm9ja2NoaXBfc3BpXzE2
Yml0X3JlYWRlcihzdHJ1Y3QgdWRldmljZSAqZGV2LAo+ICAgCSAqIHJlcHJlc2VudGVkIGluIENU
UkxSMS4KPiAgIAkgKi8KPiAgIAlpZiAoZGF0YSAmJiBkYXRhLT5tYXN0ZXJfbWFuYWdlc19maWZv
KQo+IC0JCW1heF9jaHVua19zaXplID0gMHgxMDAwMDsKPiArCQltYXhfY2h1bmtfc2l6ZSA9IFJP
Q0tDSElQX1NQSV9NQVhfVFJBTkxFTjsKPiAgIAo+ICAgCS8vIHJvY2tjaGlwX3NwaV9jb25maWd1
cmUoZGV2LCBtb2RlLCBzaXplKQo+ICAgCXJrc3BpX2VuYWJsZV9jaGlwKHJlZ3MsIGZhbHNlKTsK
PiBAQCAtNDUxLDcgKzQ1Nyw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfc3BpX3hmZXIoc3RydWN0
IHVkZXZpY2UgKmRldiwgdW5zaWduZWQgaW50IGJpdGxlbiwKPiAgIAo+ICAgCS8qIFRoaXMgaXMg
dGhlIG9yaWdpbmFsIDhiaXQgcmVhZGVyL3dyaXRlciBjb2RlICovCj4gICAJd2hpbGUgKGxlbiA+
IDApIHsKPiAtCQlpbnQgdG9kbyA9IG1pbihsZW4sIDB4MTAwMDApOwo+ICsJCWludCB0b2RvID0g
bWluKGxlbiwgUk9DS0NISVBfU1BJX01BWF9UUkFOTEVOKTsKPiAgIAo+ICAgCQlya3NwaV9lbmFi
bGVfY2hpcChyZWdzLCBmYWxzZSk7Cj4gICAJCXdyaXRlbCh0b2RvIC0gMSwgJnJlZ3MtPmN0cmxy
MSk7CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
