Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F289148CD5
	for <lists+linux-rockchip@lfdr.de>; Fri, 24 Jan 2020 18:18:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xq+0KtgLrqQ2s6QuVWfGwpEG6m6ZZX/3yRsgVBQoFGI=; b=AS4NJwF31Sv9E2
	9SAZ7aRIjbULDLEGZTBTlGl2YXc5j2hBDmgm4djBP6yxt10gvvqFqiipwQWf6AMvPwqyfB8nRp8iV
	ZzNUc3l0B1QzOrivfU454UBWZlc/9aTf8Ia/d3Sh0Kd4jV1rYZY51iGFPSZm7NfHyzc57rRrqSSn/
	vsHuJNzC0aB99PDxIxtAFd3JV2s1e5Eiv6EQAMFaxJg4MV26POhHUqzoGrtUznrBxVrLPbeT+y1KW
	dHNjM6KNW68Crh9BKNU8f/v+oXXqtK9rd8Ux1QOGF54nwkI/fcYq04gKs9NN9/LBKumt+BmJ/iWow
	sod23wFv4GeV8HqYzvUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv2bS-00067n-6b; Fri, 24 Jan 2020 17:18:42 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv2b0-0005jZ-Th; Fri, 24 Jan 2020 17:18:16 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 04F64E0003;
 Fri, 24 Jan 2020 17:17:52 +0000 (UTC)
Date: Fri, 24 Jan 2020 18:17:51 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH v2 00/10] Enable RK3066 NANDC for MK808
Message-ID: <20200124181751.721aa428@xps13>
In-Reply-To: <20200124163001.28910-1-jbx6244@gmail.com>
References: <20200124163001.28910-1-jbx6244@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_091815_097510_4C3D83CB 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 richard@nod.at, shawn.lin@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, yifeng.zhao@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSm9oYW4sCgpKb2hhbiBKb25rZXIgPGpieDYyNDRAZ21haWwuY29tPiB3cm90ZSBvbiBGcmks
IDI0IEphbiAyMDIwIDE3OjI5OjUxCiswMTAwOgoKPiBESVNDTEFJTUVSOiBVc2UgYXQgeW91ciBv
d24gcmlzay4KPiBTdGF0dXM6IEZvciB0ZXN0aW5nIG9ubHkhCj4gCj4gVmVyc2lvbjogVjIKPiAK
PiBUaXRsZTogRW5hYmxlIFJLMzA2NiBOQU5EQyBmb3IgTUs4MDguCj4gCj4gVGhlIG1ham9yaXR5
IG9mIFJvY2tjaGlwIGRldmljZXMgdXNlIGEgY2xvc2VkIHNvdXJjZSBGVEwgZHJpdmVyCj4gdG8g
cmVkdWNlIHdlYXIgbGV2ZWxpbmcuIFRoaXMgcGF0Y2ggc2VyaWUgcHJvcG9zZXMKPiBhbiBleHBl
cmltZW50YWwgcmF3IE5BTkQgY29udHJvbGxlciBkcml2ZXIgZm9yIGJhc2ljIHRhc2tzCj4gaW4g
b3JkZXIgdG8gZ2V0IHRoZSBiaW5kaW5ncyBhbmQgdGhlIG5vZGVzIGFjY2VwdGVkIGZvciBpbiB0
aGUgZHRzIGZpbGVzLgo+IAo+IFdoYXQgZG9lcyBpdCBkbzoKPiAKPiBPbiBtb2R1bGUgbG9hZCB0
aGlzIGRyaXZlciB3aWxsIHJlc2VydmUgaXRzIHJlc291cmNlcy4KPiBBZnRlciBpbml0aWFsaXph
dGlvbiB0aGUgTVREIGZyYW1ld29yayB3aWxsIHRoZW4gdHJ5IHRvIGRldGVjdAo+IHRoZSB0eXBl
IGFuZCBudW1iZXIgb2YgTkFORCBjaGlwcy4gV2hlbiBhbGwgY29uZGl0aW9ucyBhcmUgbWV0LAo+
IGl0IHJlZ2lzdGVycyBpdCBzZWxmIGFzIE1URCBkZXZpY2UuCj4gVGhpcyBkcml2ZXIgaXMgdGhl
biByZWFkeSB0byByZWNlaXZlIHVzZXIgY29tbWFuZHMKPiBzdWNoIGFzIHRvIHJlYWQgYW5kIHdy
aXRlIE5BTkQgcGFnZXMuCj4gCj4gVGVzdCBleGFtcGxlczoKPiAKPiAjIGRkIGlmPS9kZXYvbXRk
MCBvZj1kZC5iaW4gYnM9ODE5MiBjb3VudD00Cj4gCj4gIyBuYW5kZHVtcCAtYSAtbCAzMjc2OCAt
ZiBuYW5kZHVtcC5iaW4gL2Rldi9tdGQwCj4gCj4gTm90IHRlc3RlZDoKPiAKPiBOQU5EQyB2ZXJz
aW9uIDkuCj4gTkFORCByYXcgd3JpdGUuCgpuYW5kYml0ZXJycyAtaSAvZGV2L210ZDx4PiB0byB2
YWxpZGF0ZSBpdCB3b3JrcyEKCj4gUkszMDY2IHN0aWxsIGhhcyBubyBzdXBwb3J0IGZvciBVYm9v
dC4KPiBBbnkgd3JpdGUgY29tbWFuZCB3b3VsZCBpbnRlcmZlcmUgd2l0aCBkYXRhIHN0cnVjdHVy
ZXMgbWFkZSBieSB0aGUgYm9vdCBsb2FkZXIuCj4gCj4gRXRjLgo+IAo+IFByb2JsZW1zOgo+IAo+
IE5vIGJhZCBibG9jayBzdXBwb3J0LiBNb3N0IGRldmljZXMgdXNlIGEgRlRMIGJhZCBibG9jayBt
YXAgd2l0aCB0YWdzCj4gdGhhdCBtdXN0IGJlIGxvY2F0ZWQgb24gc3BlY2lmaWMgcGFnZSBsb2Nh
dGlvbnMgd2hpY2ggaXMgb3V0c2lkZQo+IHRoZSBzY29wZSBvZiB0aGUgcmF3IE1URCBmcmFtZXdv
cmsuCgpJIGRvbid0IHVuZGVyc3RhbmQgdGhpcyBzdG9yeSBvZiBiYWQgYmxvY2sgbWFwLiBBcmUg
eW91IGNvbXBhcmluZyB3aXRoCmEgdmVuZG9yIGtlcm5lbD8KCklmIHZlbmRvcnMgaW52ZW50IG5l
dyB3YXlzIHRvIGhhbmRsZSBNVEQgYmxvY2tzIGl0J3Mgc2FkIGJ1dCB0aGV5IHdpbGwKbmV2ZXIg
YmUgY29tcGF0aWJsZSB3aXRoIG1haW5saW5lLiBJdCdzIGEgZmFjdC4gSG93ZXZlciBmb3IgYW4g
dXBzdHJlYW0KdmVyc2lvbiwgSSBkb24ndCBnZXQgaWYgdGhlcmUgaXMgYW55IHJlYWwgaXNzdWU/
IFRoZSBsb2NhdGlvbiBvZiB0aGUKQkJNIGlzIG5vdCByZWxhdGVkIHRvIHlvdXIgY29udHJvbGxl
ciBkcml2ZXIgYnV0IGRlcGVuZHMgb24gdGhlIE5BTkQKY2hpcCBhbmQgYXMgeW91IHNheSBiZWxv
dyB3ZSBrbm93IHByb3ZpZGUgdGhyZWUgcG9zc2libGUgcG9zaXRpb25zIGluCmEgYmxvY2suCgpX
aGF0IHlvdSByZWZlciBhcyB0aGUgRlRMIGlzIHRoZSBlcXVpdmFsZW50IG9mIFVCSSBpbiBMaW51
eCwgd2hpY2gKaW5kZWVkIG9mZmVycyB0byB0aGUgdXNlciBhIGxpbmVhciBsb2dpY2FsIHZpZXcg
b2YgYWxsIHRoZSB2YWxpZCBibG9ja3MKd2hpbGUgcGh5c2ljYWxseSB0aGUgZGF0YSBpcyBzcHJl
YWQgYWNyb3NzIGFsbCB0aGUgYXZhaWxhYmxlCmVyYXNlYmxvY2tzLgoKPiAKPiBoeW5peF9uYW5k
X2luaXQoKSBhZGQgZXh0cmEgb3B0aW9uIE5BTkRfQkJNX0xBU1RQQUdFIGZvciBIMjdVQ0c4VDJB
VFItQkMuCj4gCj4gTm8gcGFydGl0aW9uIHN1cHBvcnQuIEEgRlRMIGRyaXZlciB3aWxsIHN0b3Jl
IGF0IHJhbmRvbSBsb2NhdGlvbnMgYW5kCj4gYSBsaW5lYXIgdXNlciBzcGVjaWZpYyBsYXlvdXQg
ZG9lcyBub3QgZml0IHdpdGhpbgo+IHRoZSBnZW5lcmljIGNoYXJhY3RlciBvZiB0aGlzIGJhc2lj
IGRyaXZlci4KPiAKPiBEcml2ZXIgYXNzdW1lcyB0aGF0IElPIHBpbnMgYXJlIGNvcnJlY3RseSBz
ZXQgYnkgdGhlIGJvb3QgbG9hZGVyLgoKV2hpY2ggcGlucyBhcmUgeW91IHRhbGtpbmcgYWJvdXQ/
IEFyZSB5b3UgbWlzc2luZyBhIHBpbmN0cmwgZHJpdmVyPwoKPiAKPiBGaXhlZCB0aW1pbmcgc2V0
dGluZy4KPiAKPiBSSzMyMjhBL1JLMzIyOEIgY29tcGF0aWJpbGl0eSB2ZXJzaW9uIDcwMSB1bmtu
b3duCj4gUlYxMTA4IG5hbmQgdmVyc2lvbiB1bmtub3duCj4gCj4gRXRjLgo+IAo+IFRvZG86Cj4g
Cj4gTUxDID8KClRoaXMgaXMgbm90IHJlbGF0ZWQgdG8geW91ciBOQU5EIGNvbnRyb2xsZXIgZHJp
dmVyIG5laXRoZXIuCgoKQ2hlZXJzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
