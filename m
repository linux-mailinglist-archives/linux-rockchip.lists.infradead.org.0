Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB62175D12
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Mar 2020 15:30:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZYnboBUoeTf4HUpfYNmnlpwu7A+tmwNnj/la5pCQmZE=; b=oU+xD+LaFHZzqS
	FrGvassMkboqOE9Pcib7lm19KKh52pE6OUPpSONtpTlmbATYYDimovsiuTb7DQJ2in+TXmog5rUj9
	r+Tt0b9ywvADwpg0VGF2B/p+YTZsPlARIsbo/iDxaGWuLVQ6ESC/ReWAIepBhUTU7u41HhhAkvxm/
	d525OHJ8v4JQpS8023X7zvU4kIqzAnjEO0ssvfB2wHtVaantSEoWCcIEkl4QlYc4VIsckQU1ul9eR
	AkqE2LnQRGSmNi4VhS3Q0t4moAATUpPto9+6H7BAqSwnzl2DstlRFwj0mGTtY/CpFkTxz/BrdmE/m
	Zh9w6hbT/BJqM6OlBbxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8m5n-0006EF-8g; Mon, 02 Mar 2020 14:30:47 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8m5k-0006Dd-4S
 for linux-rockchip@lists.infradead.org; Mon, 02 Mar 2020 14:30:45 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C7561294B57;
 Mon,  2 Mar 2020 14:30:41 +0000 (GMT)
Date: Mon, 2 Mar 2020 15:30:39 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v6 5/6] media: rkvdec: Add the rkvdec driver
Message-ID: <20200302153039.0c4ff54f@collabora.com>
In-Reply-To: <20200302145746.3e94c1d1@coco.lan>
References: <20200220163016.21708-1-ezequiel@collabora.com>
 <20200220163016.21708-6-ezequiel@collabora.com>
 <20200302145746.3e94c1d1@coco.lan>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_063044_313352_4CA061E5 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCAyIE1hciAyMDIwIDE0OjU3OjQ2ICswMTAwCk1hdXJvIENhcnZhbGhvIENoZWhhYiA8
bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz4gd3JvdGU6Cgo+ID4gKyNkZWZpbmUgTV9OKGN0eGlk
eCwgaWRjMF9tLCBpZGMwX24sIGlkYzFfbSwgaWRjMV9uLAkJXAo+ID4gKwkgICAgaWRjMl9tLCBp
ZGMyX24sIGludHJhX20sIGludHJhX24pCQkJXAo+ID4gKwlbMF1bKGN0eGlkeCldID0ge2lkYzBf
bSwgaWRjMF9ufSwJCQlcCj4gPiArCVsxXVsoY3R4aWR4KV0gPSB7aWRjMV9tLCBpZGMxX259LAkJ
CVwKPiA+ICsJWzJdWyhjdHhpZHgpXSA9IHtpZGMyX20sIGlkYzJfbn0sCQkJXAo+ID4gKwlbM11b
KGN0eGlkeCldID0ge2ludHJhX20sIGludHJhX259ICAKPiAKPiBIbW0uLi4gSSBjYW4ndCBldmVu
IGltYWdpbmUgd2hhdCBhIG1hY3JvIG5hbWVkICJNX04iIHdvdWxkIGRvLgo+IFBsZWFzZSB1c2Ug
YSBiZXR0ZXIgbmFtZSBmb3IgaXQuCgpXZWxsLCB0aGUgbWVhbmluZyBvZiB0aG9zZSBmaWVsZHMg
aXMgZXhwbGFpbmVkIGluIHRoZSBzcGVjLCBhbmQgdGhlCm5hbWUgaXRzZWxmIGhhcyBiZWVuIGNo
b3NlbiBzbyBpdCdzIHNob3J0IGVub3VnaCB0byBub3QgaGF2ZSBsaW5lcwpleGNlZWRpbmcgODAg
Y2hhcnMgd2hpbGUgc3RpbGwga2VlcGluZyB0aGUgbnVtYmVyIG9mIGxpbmVzIHVzZWQgZm9yIHRo
ZQpjYWJhY190YWJsZVtdIGRlZmluaXRpb24gYWNjZXB0YWJsZS4gQnV0LCBJJ20gb3BlbiB0byBh
bnkgb3RoZXIKc3VnZ2VzdGlvbi4KCj4gCj4gLQo+IAo+IFdpdGggcmVnYXJkcyB0byB0aGUgbWFj
cm8gaXRzZWxmLCBhdCBsZWFzdCBmb3IgbXkgZXllcywgaXQgbG9va2VkIGJhZCwKPiBmcm9tIGxv
bmctdGVybSBtYWludGVuYW5jZSBQb1YsIHRvIGhhdmUgYSBmaXJzdCBhcmd1bWVudCAoY3R4aWR4
KSB3aG9zZQo+IHZhbHVlIGlzIGp1c3QgYSBtb25vdG9uaWMgbGluZWFybHktaW5jcmVtZW50ZWQg
Y291bnRlci4KCkl0J3Mgbm90LCB3ZSBoYXZlIGhvbGVzIGluIHRoZSBtaWRkbGUsIGhlbmNlIHRo
ZSBleHBsaWNpdCBpbmRleGluZy4gSQphbHNvIHRyaWVkIHRvIGhhdmUgc29tZXRoaW5nIGFzIGNs
b3NlIGFzIHBvc3NpYmxlIHRvIHRoZSBzcGVjLCBzbwpwZW9wbGUgY2FuIGVhc2lseSBzZWUgd2hl
cmUgaXQgY29tZXMgZnJvbS4KCj4gCj4gSSBtZWFuLCB0aGUgd2F5IGl0IGlzLCBpdCBzb3VuZHMg
cmlza3ksIGFzIG9uZSBtaWdodCBtaXNzIGEgbnVtYmVyCj4gYW5kIG9uZSBlbnRpcmUgbGluZSBv
ZiB0aGUgYXJyYXkgd291bGQgYmUgZmlsbGVkIHdpdGggemVyb3MuCgpUaGF0J3MgZXhhY3RseSB3
aHkgSSB1c2VkIGV4cGxpY2l0IGluZGV4aW5nOiBJIHdhbnQgc3BlY2lmaWMgcG9ydGlvbnMKb2Yg
dGhlIHRhYmxlIHRvIGJlIDAtZmlsbGVkIDotKS4KCj4gCj4gPiArCj4gPiArLyoKPiA+ICsgKiBD
b25zdGFudCBDQUJBQyB0YWJsZS4KPiA+ICsgKiBCdWlsdCBmcm9tIHRoZSB0YWJsZXMgZGVzY3Jp
YmVkIGluIHNlY3Rpb24gJzkuMy4xLjEgSW5pdGlhbGlzYXRpb24gcHJvY2Vzcwo+ID4gKyAqIGZv
ciBjb250ZXh0IHZhcmlhYmxlcycgb2YgdGhlIEgyNjQgc3BlYy4KPiA+ICsgKi8KPiA+ICtzdGF0
aWMgY29uc3Qgczggcmt2ZGVjX2gyNjRfY2FiYWNfdGFibGVbNF1bNDY0XVsyXSA9IHsKPiA+ICsJ
LyogVGFibGUgOS0xMiDigJMgVmFsdWVzIG9mIHZhcmlhYmxlcyBtIGFuZCBuIGZvciBjdHhJZHgg
ZnJvbSAwIHRvIDEwICovCj4gPiArCU1fTigwLCAyMCwgLTE1LCAyMCwgLTE1LCAyMCwgLTE1LCAy
MCwgLTE1KSwgIAo+IAo+IFNvLCAobWF5YmUgZXhjZXB0IGlmIHRoZSBjdHhpZHggdmFsdWUgaGFz
IHNvbWUgcmVhbCBtZWFuaW5nKSwKPiBwZXJoYXBzIHlvdSBjb3VsZCwgaW5zdGVhZCwgc3dpdGNo
IHRoZSBhcnJheSBvcmRlciBhdCB0aGUgdGFibGVzLAo+IGFuZCBnZXQgcmlkIG9mIGN0eGlkeCBw
YXJhbWV0ZXIgZm9yIGdvb2QsIHNvIHRoZSBhYm92ZSBjb2RlIHdvdWxkCj4gYmUgbGlrZToKCkkg
Y2FuJ3Qgc3dpdGNoIHRoZSBhcnJheSBvcmRlciBzaW5jZSB0aGUgSFcgZXhwZWN0cyB0aGluZ3Mg
dG8gYmUKb3JnYW5pemVkIHRoaXMgd2F5ICh0aGF0IHRhYmxlIGlzIGRpcmVjdGx5IGNvcGllZCB0
byBhIG1lbW9yeSByZWdpb24KdGhhdCdzIHBhc3NlZCB0byB0aGUgSFcpLgoKPiAKPiAjZGVmaW5l
IElOSVRfTU5fUEFJUlMoaWRjMF9tLCBpZGMwX24sIGlkYzFfbSwgaWRjMV9uLAlcCj4gCSAgICAg
ICBpZGMyX20sIGlkYzJfbiwgaW50cmFfbSwgaW50cmFfbikJXAo+IAl7CQkJCQkJXAo+IAkJWzBd
ID0ge2lkYzBfbSwgaWRjMF9ufSwJCQlcCj4gCQlbMV0gPSB7aWRjMV9tLCBpZGMxX259LAkJCVwK
PiAJCVsyXSA9IHtpZGMyX20sIGlkYzJfbn0sCQkJXAo+IAkJWzNdID0ge2ludHJhX20sIGludHJh
X259CQlcCj4gCX0sCj4gCj4gc3RhdGljIGNvbnN0IHM4IHJrdmRlY19oMjY0X2NhYmFjX3RhYmxl
WzQ2NF1bNF1bMl0gPSB7Cj4gCS8qIFRhYmxlIDktMTIg4oCTIFZhbHVlcyBvZiB2YXJpYWJsZXMg
bSBhbmQgbiBmb3IgY3R4SWR4IGZyb20gMCB0byAxMCAqLwo+IAlJTklUX01OX1BBSVJTKDIwLCAt
MTUsIDIwLCAtMTUsIDIwLCAtMTUsIDIwLCAtMTUpLAo+IAkuLi4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
