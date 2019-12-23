Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E0D1290E9
	for <lists+linux-rockchip@lfdr.de>; Mon, 23 Dec 2019 03:29:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Okg7041Z3Mc5ikye2e3dONRw1ZhQwJwiGKI4fql8wRs=; b=EPRwMfF+2IiNFoGFOaXzcakXE
	DqUjY/p5E6toPK+dN0oIYHYYMH9KFCSCIV6CeYvUiOAqa1gqy1RJBchq7BG4mYXHbwHSgFsxgk6IK
	qtNAUGGuCryCeKmaEOXilcdgUZFoEFzzRVijcoK9UfpIxa7GcQnxy+Ueyrk0d7LHc0h1Nb2WAGs7/
	GCS2MzOMi89aHOHIf9GNwDbWVtcCKx6z96ppnfNtDdMKuxjCGPlYf+0pegBktm5xsFr+hEzajo1Fu
	Y19RJPMTaAM2Uw0Rp2oNmLL5GyxC0Y8hsMPddv6sVVqZs1Fln5wgcmpGefGE7ZKMlnSh0r04vrb7V
	pSJT+JoxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijDSx-0001Xd-PH; Mon, 23 Dec 2019 02:29:03 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijDSu-0001Wt-77
 for linux-rockchip@lists.infradead.org; Mon, 23 Dec 2019 02:29:02 +0000
Received: from localhost (unknown [192.168.167.209])
 by regular1.263xmail.com (Postfix) with ESMTP id B14CD33E;
 Mon, 23 Dec 2019 10:28:48 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P29792T140620620351232S1577068127792355_; 
 Mon, 23 Dec 2019 10:28:48 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7b2480f7ad0405ce6e59d9472a7452a9>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 1/2] Revert "rockchip: spi: fix off-by-one in chunk size
 computation"
To: Jagan Teki <jagan@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191211132623.430-1-jagan@amarulasolutions.com>
 <20191211132623.430-2-jagan@amarulasolutions.com>
 <1E12E6D7-5401-4EF5-9D74-DFC6F8216799@theobroma-systems.com>
 <CAMty3ZDoNCCMPTC_OoAyEwOoSMsa79KRmW9+LTC8opbinUiYPg@mail.gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <e02f612b-2148-fb85-b0ca-8925cef4d22b@rock-chips.com>
Date: Mon, 23 Dec 2019 10:28:47 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAMty3ZDoNCCMPTC_OoAyEwOoSMsa79KRmW9+LTC8opbinUiYPg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_182900_428570_FC541814 
X-CRM114-Status: GOOD (  11.52  )
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTIvMjEg5LiL5Y2IMzozMiwgSmFnYW4gVGVraSB3cm90ZToKPiBIaSBQaGlsaXBw
LAo+Cj4gT24gV2VkLCBEZWMgMTEsIDIwMTkgYXQgNzoxMCBQTSBQaGlsaXBwIFRvbXNpY2gKPiA8
cGhpbGlwcC50b21zaWNoQHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4gd3JvdGU6Cj4+Cj4+Cj4+PiBP
biAxMS4xMi4yMDE5LCBhdCAxNDoyNiwgSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9u
cy5jb20+IHdyb3RlOgo+Pj4KPj4+IFRoZSBtYXhpbXVtIHRyYW5zZmVyIGxlbmd0aCAoaW4gYSBz
aW5nbGUgdHJhbnNhY3Rpb24pIGZvciB0aGUgUm9ja2NoaXAKPj4+IFNQSSBjb250cm9sbGVyIGlz
IDY0S2ZyYW1lcyAoaS5lLiAweDEwMDAwIGZyYW1lcykgb2YgOGJpdCBvciAxNmJpdAo+Pj4gZnJh
bWVzIGFuZCBpcyBlbmNvZGVkIGFzIChudW1fZnJhbWVzIC0gMSkgaW4gQ1RSTFIxLgo+Pj4KPj4+
IFNvIHRoZSAweDEwMDAwIGlzIG9mZnNldCB2YWx1ZSBmb3IgNjRLIGJ1dCB0aGUgYWN0dWFsIHNp
emUgdmFsdWUgd291bGQKPj4+IGJlICdtaW51cyAxJyBmcm9tIDB4MTAwMDAuCj4+IE5BSy4gUGxl
YXNlIHNlZSAyIGNvZGUgbGluZXMgYmVsb3cgeW91ciBjaGFuZ2UgdG8gc2VlIHRoYXQgdGhlIOKA
nG1pbnVzIDHigJ0KPj4gaXMgYXBwbGllZCB0aGVyZeKApiBzbyBhIHRvZG8gb2YgMHgxMDAwMCB3
aWxsIHdyaXRlIDB4ZmZmZiB0byByZWdzLT5jdHJscjEuCj4+Cj4+IFRoZSBwcm9ibGVtIG11c3Qg
YmUgc29tZXdoZXJlIGVsc2UgYW5kIHRoaXMgcGF0Y2ggd2lsbCBvbmx5IG1hc2sgdGhlCj4+IHVu
ZGVybHlpbmcgaXNzdWUuCj4gUGxlYXNlIGNoZWNrIHRoZSBiZWxvdyBjaGFuZ2VzLiB0aGUgbWF4
IHRyYW5zZmVyIHNpemUgaXMgNjRLIC0gMSB3aGljaAo+IGlzIDB4ZmZmZiBhbmQgd2UgbmVlZCB0
byB3cml0ZSAtMSBvZiB0aGlzIHRvIGNyMS4KClllcCwgdGhlIGNvdW50ZXIgaXMgMTZiaXQsIGFu
ZCB0aGUgYWN0dWFsIG1heCBzaXplIHdpbGwgYmUgMHhmZmZmIGFuZCAKdGhlIG1heCBhdmFpbGFi
bGUgdmFsdWUgaW4gcmVnIHNob3VsZAoKYmUgMHhmZmZmLTEuCgoKVGhhbmtzLAoKLSBLZXZlcgoK
Pgo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQv
bGludXgtbmV4dC5naXQvY29tbWl0L2RyaXZlcnMvc3BpL3NwaS1yb2NrY2hpcC5jP2lkPTUxODVh
ODFjMDJkNDExOGIxMWU2Y2I3YjVmYmY2ZjE1ZmY3YWZmOTAKPiBodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xpbnV4LW5leHQuZ2l0L2NvbW1pdC9k
cml2ZXJzL3NwaS9zcGktcm9ja2NoaXAuYz9pZD0wNGIzN2QyZDAyYzBhNWFlMmY0ZTU5MzI2ZWY2
ZGVhZmYxOGUwNDU2Cj4KPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
