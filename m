Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DBC120ED7
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 17:09:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8emT8LvhHeknzEENq8gjTewBgN3PA0pijGtFk72gXU=; b=GQ6g8LW0WMEe7L
	wcrrEQHSAgol/dxgMar/lUN1yabOMFIACaQMaKaJQVwi4uZHtkELdC73QNld7oRyA4l1SCUQGTyIX
	ibVcclO5vP3JwuOchkVlxvym1fU+ayDo+DL1w/ioh/ioTGNmI5OvBnEn7wrStY9i+f0TaQHzwsTw0
	VSb3PjOqRHTy+xt46pFlHBoQI37M4cyP4OcsTgYi4ekzWOG+yIeR5KZk9NM92fNqqLwe8P/AhItps
	pDTQS8qJSkFWcL2uzoZNIvf/lFzGO/3U+QGuupL0CByYen0ZAW+rRbVM5bXS1htvkSfeVXLI6eY8u
	bS3qFi/RqkTTcqHkBykA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igswI-0001T3-5D; Mon, 16 Dec 2019 16:09:42 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igswA-0001RO-WE
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 16:09:39 +0000
Received: by mail-io1-xd42.google.com with SMTP id v18so6503540iol.2
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2019 08:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cpRMnpuuG37oGQE0b+ougpVuIyKezxFskSDMX9nBV5c=;
 b=o3vDU5WwoZleI9RZZByuruOMHxPX8Jc5G00bN37o+oyiIOxoN1f5N7mqV6PbThbbFC
 MqB8GZKW9O26Eq9jxnEcvfGX6OfzmhtfZPs3/efSwsyaO/mBi7Ms3Om0YpU5RE5bEtNJ
 +xQkREB7Wd87S6ncvydsXeCz6o9Ybl9x1kJMFPsZeKoQzrFUtW4JbtoumLnlnxJmZqHv
 US4xrmV3Jt3gD8RXV8ulr5TPfu6O9yZtKePVvxw3mIzL8kr5RQqD01oC/+FbOSl0QaOc
 wCR7zugYf/jZxlKtC+65vbxgmPO26NmQ93Lq1I0Hg4fiyyzERgHGX+H2sQvJxVVnoiTf
 v5Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cpRMnpuuG37oGQE0b+ougpVuIyKezxFskSDMX9nBV5c=;
 b=h39ZNQzsOlqkYiMy5Jx7O/pgJMZUrZ/JM0XCZqQtUjdxN0ve4tj6omDXD3F2cDrl8T
 C6HITmLSxbLlJARXDPyVmcgBr29mi2mB7W5dBcIjUbHe76oO6whxm0OeqdpbSiC0jWZU
 95r/sWYDZBBc3YiBsxlxWefehNu8tjn5ex8fQkQ8jaAklKqPCO4WNbmrbHtFMfXiuVd8
 lR3/0LH0Sen0JNxpQ18I8AVDp9dKLGi4YWX1lu7KL2vZ6ht40JjhIw7X1cGdW2cDEz7x
 q7sKqq2HHPqyZgsUDY273fhrANhhoBWiwThfTSzLhvCjLob5xEluRA0q5db5Rz+udQGQ
 reTA==
X-Gm-Message-State: APjAAAVjDTQF4L4B0LTFWRYxsqMTXadcfBiwHmc6jlNWfCl/n75RvzoT
 bbvcpq1qvUxuThISgkENcv4Aekxk/wLQm+Y2Sf0=
X-Google-Smtp-Source: APXvYqxEvIc3fVXtPmXDLJ0VzbQjsPADshGSsN+ZGGQgy7Xl9n0T94gIIsHFoqHSeFPclKiXgOB6GpXAuRsOmKaTkuI=
X-Received: by 2002:a02:8817:: with SMTP id r23mr12728830jai.120.1576512568600; 
 Mon, 16 Dec 2019 08:09:28 -0800 (PST)
MIME-Version: 1.0
References: <cover.1575932654.git.robin.murphy@arm.com>
 <8642045f0657c9e782cd698eb08777c9d4c10c8d.1575932654.git.robin.murphy@arm.com>
 <CANAwSgTtzAZJqpsD7uVKskTnDmrT1bs=JuHxnPrkpQKtnZLhvQ@mail.gmail.com>
 <2681192.H4ySjFOPB8@diego>
 <CANAwSgTL-9VCFFj-+4xsLZOxKCHtjyN4P6fYnuRSOe7cZRiWew@mail.gmail.com>
 <f29fbb91-ffd0-5650-30b4-5791c970a834@arm.com>
In-Reply-To: <f29fbb91-ffd0-5650-30b4-5791c970a834@arm.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 16 Dec 2019 21:39:16 +0530
Message-ID: <CANAwSgSpe=7-jCs4OtnnOoosfG89M-TAu-epC7sG0Gw2c7DrHA@mail.gmail.com>
Subject: Re: [PATCH 4/4] mfd: rk808: Convert RK805 to syscore/PM ops
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_080937_311546_D179149A 
X-CRM114-Status: GOOD (  26.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgUm9iaW4sCgpPbiBNb24sIDE2IERlYyAyMDE5IGF0IDE4OjA4LCBSb2JpbiBNdXJwaHkgPHJv
YmluLm11cnBoeUBhcm0uY29tPiB3cm90ZToKPgo+IE9uIDIwMTktMTItMTYgOTo1MCBhbSwgQW5h
bmQgTW9vbiB3cm90ZToKPiA+IEhpIEhlaWtvIC8gUm9iaW4gLyBTb2VyZW4sCj4gPgo+ID4gT24g
TW9uLCAxNiBEZWMgMjAxOSBhdCAwMTo1NywgSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5k
ZT4gd3JvdGU6Cj4gPj4KPiA+PiBIaSBBbmFuZCwKPiA+Pgo+ID4+IEFtIFNvbm50YWcsIDE1LiBE
ZXplbWJlciAyMDE5LCAxOTo1MTo1MCBDRVQgc2NocmllYiBBbmFuZCBNb29uOgo+ID4+PiBPbiBU
dWUsIDEwIERlYyAyMDE5IGF0IDE4OjU0LCBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0u
Y29tPiB3cm90ZToKPiA+Pj4+Cj4gPj4+PiBSSzgwNSBoYXMgdGhlIHNhbWUga2luZCBvZiBkdWFs
LXJvbGUgc2xlZXAvc2h1dGRvd24gcGluIGFzIFJLODA5L1JLODE3LAo+ID4+Pj4gc28gaXQgbWFr
ZXMgbGl0dGxlIHNlbnNlIGZvciB0aGUgZHJpdmVyIHRvIGhhdmUgdG8gaGF2ZSB0d28gY29tcGxl
dGVseQo+ID4+Pj4gZGlmZmVyZW50IG1lY2hhbmlzbXMgdG8gaGFuZGxlIGVzc2VudGlhbGx5IHRo
ZSBzYW1lIHRoaW5nLiBCcmluZyBSSzgwNQo+ID4+Pj4gaW4gbGluZSB3aXRoIHRoZSBSSzgwOS9S
SzgxNyBmbG93IHRvIGNsZWFuIHRoaW5ncyB1cC4KPiA+Pj4+Cj4gPj4+PiBTaWduZWQtb2ZmLWJ5
OiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0uY29tPgo+ID4+Pj4gLS0tCj4gPj4KPiA+
PiBbLi4uXQo+ID4+Cj4gPj4+IEkgYW0gc2lsbCBnZXR0aW5nIHRoZSBrZXJuZWwgd2FybmluZyBv
biBpc3N1ZSBwb3dlcm9mZiBzZWUgYmVsb3cuCj4gPj4+IG9uIG15IFJvY2s5NjAgTW9kZWwgQQo+
ID4+PiBJIGZlZWwgdGhlIHJlYXNvbiBmb3IgdGhpcyBpcyB3ZSBub3cgaGF2ZSB0d28gcG93ZXJv
ZmYgY2FsbGJhY2sKPiA+Pj4gMSAgcG1fcG93ZXJfb2ZmID0gcms4MDhfZGV2aWNlX3NodXRkb3du
Cj4gPj4+IDIgIHJrOHh4X3N5c2NvcmVfc2h1dGRvd24KPiA+Pgo+ID4+IE5vcGUsIHRoZSBpc3N1
ZSBpcyBqdXN0IHRoZSBpMmMgc3Vic3lzdGVtIGNvbXBsYWluaW5nIHRoYXQgdGhlCj4gPj4gUm9j
Y2toaXAgaTJjIGRyaXZlcyBkb2VzIG5vdCBwcm92aWRlIGFuIGF0b21pYy10cmFuc2ZlciBmdW5j
dGlvbiwgc2VlCj4gPj4gICAgICAgICAgIk5vIGF0b21pYyBJMkMgdHJhbnNmZXIgaGFuZGxlciBm
b3IgJ2kyYy0wJyIKPiA+PiBpbiB5b3VyIHdhcm5pbmcuCj4gPj4KPiA+PiBTb21ld2hlcmUgaXQg
d2FzIHN1Z2dlc3RlZCB0aGF0IHRoZSBjdXJyZW50IHRyYW5zZmVyIGZ1bmN0aW9uIGp1c3QKPiA+
PiB3b3JrcyBhcyBhdG9taWMgYXMgd2VsbC4KPiA+Pgo+ID4+Cj4gPj4+IEluIG15IGludmVzdGln
YXRpb24gZWFybGllciBjb21tb24gZnVuY3Rpb24gZm9yIHNodXRkb3duIHNvbHZlCj4gPj4+IHRo
ZSBpc3N1ZSBvZiBjbGVhbiBzaHV0ZG93bi4KPiA+Pgo+ID4+IFRoaXMgaXMgc2ltcGx5IGEgcmVz
dWx0IG9mIHlvdXIgc3lzY29yZS1zaHV0ZG93biBmdW5jdGlvbiBydW5uaW5nIHdheSB0bwo+ID4+
IGVhcmx5LCBiZWZvcmUgdGhlIGkyYyBzdWJzeXN0ZW0gc3dpdGNoZWQgdG8gdXNpbmcgYXRvbWlj
IHRyYW5zZmVycy4KPiA+Pgo+ID4+IFRoaXMgYWxzbyBpbmRpY2F0ZXMgdGhhdCB0aGlzIHdvdWxk
IHJlYWxseSBiZSB3YXkgdG8gZWFybHksIGFzIG90aGVyIHBhcnRzCj4gPj4gb2YgdGhlIGtlcm5l
bCBjb3VsZCBhbHNvIHN0aWxsIGJlIHJ1bm5pbmcuCj4gPj4KPiA+Cj4gPiBZZXMsIHlvdSBhcmUg
Y29ycmVjdCBzeXNjb3JlLXNodXRkb3duIGluaXRpYXRlcwo+ID4gc2h1dGRvd24gYmVmb3JlIGFs
bCB0aGUgZGV2aWNlIGRvIGNsZWFuIHNodXRkb3duLgo+ID4KPiA+IFNvIGZvciBiZXN0IGFwcHJv
YWNoIGZvciBjbGVhbiBhdG9taWMgc2h1dGRvd24gaXMgdG8gdXNlCj4gPiAgICAvKiBkcml2ZXIg
bW9kZWwgaW50ZXJmYWNlcyB0aGF0IGRvbid0IHJlbGF0ZSB0byBlbnVtZXJhdGlvbiAgKi8KPiA+
ICAgICAgICAgIHZvaWQgKCpzaHV0ZG93bikoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCk7Cj4g
PiBkcm9wIHRoZSByZWdpc3RyYXRpb24gb2Ygc3lzY29yZSBhbmQgdXNlIGNvcmUgLmkyY19zaHV0
ZG93bi4KPgo+IEh1aD8gSWYgeW91IHVuZGVyc3RhbmQgdGhhdCB0aGUgc3lzY29yZSBzaHV0ZG93
biBob29rIGlzIHRvbyBlYXJseSwgd2h5Cj4gd291bGQgaXQgc2VlbSBhIGdvb2QgaWRlYSB0byBw
dWxsIHRoZSBwbHVnIGV2ZW4gZWFybGllciBmcm9tIGRyaXZlcgo+IHNodXRkb3duPyBOb3QgdG8g
bWVudGlvbiB0aGF0IHlvdXIgcGF0Y2ggYXMgcHJvcG9zZWQgYnJlYWtzIGFsbCB0aGUKPiBHUElP
LWJhc2VkIHNodXRkb3duIGZsb3dzLgo+Ck9rIG9wcHMsIEkgbWlnaHQgaGF2ZSBtaXNzZWQgc29t
ZSB0aGluZy4KSSBqdXN0IGxvb2sgaW50byBsb2dzIHRvIGJldHdlZW4gc3lzY29yZSBzaHV0ZG93
biBhbmQgSTJDIHNodXRkb3duCmdldCBtb3JlIGluc2lnaHQsIHNvIEkgZmVlbCBJMkMgc2h1dGRv
d24gZG9zZSBjbGVhbiBzaHV0ZG93bi4KCj4gSWYgeW91IHJlYWxseSBjYXJlIGFib3V0IGF2b2lk
aW5nIHRoZSBzcHVyaW91cyB3YXJuaW5nLCBpbXBsZW1lbnQgdGhlCj4gZXhwZWN0ZWQgcG9sbGVk
LW1vZGUgdHJhbnNmZXIgZnVuY3Rpb24gaW4gdGhlIEkyQyBkcml2ZXIuIFRyeWluZyB0byBoYWNr
Cj4gYXJvdW5kIGl0IGJ5IGlzc3VpbmcgSTJDLWJhc2VkIHNodXRkb3duIGZyb20gYW55d2hlcmUg
b3RoZXIgdGhhbgo+IHBtX3Bvd2VyX29mZiBpcyBhIHdhc3RlIG9mIGV2ZXJ5b25lJ3MgdGltZS4K
CkkgaGF2ZSB0aXJlZCB0aGlzIEkyQyBzaHV0ZG93biBhcHByb2FjaCBlYXJsaWVyLCBidXQgYXMg
dGhlaXIgd2VyZQppc3N1ZSB3aXRoIGNsZWFuIHJlc3RhcnQsIHNvIEkgZHJvcHBlZCB0aGlzIGxp
bmUuClRoZW4gSSB0aXJlZCB0byBhZGQgcmVzdGFydCBub3RpZmllciB0byBoYW5kbGUgcmVzdGFy
dCB0aGF0IGFsc28KZGlkIG5vdCB3b3JrIG15IGJvYXJkcywgc28gSSBhbSBleHBsb3JpbmcgbW9y
ZS4KCj4KPiA+IEkgaGF2ZSBwcmVwYXJlIHRoaXMgcGF0Y2ggb24gdG9wIG9mIHRoaXMgc2VyaWVz
IGZvciBSVEYKPiA+IFRoaXMgcGF0Y2ggZG9zZSBjbGVhbiBzaHV0ZG93biBvZiBhbGwgdGhlIGRl
dmljZXMgYmVmb3JlIHBvd2Vyb2ZmLgo+ID4gc2VlIHRoZSBsb2cgYmVsb3cuCj4gPgo+ID4gKk5v
dGUqOiBUaGlzIGZlYXR1cmUgd2lsbCBsaWtlbHkgYnJlYWsgdGhlIGNsZWFuIHJlYm9vdCBmZWF0
dXJlLgo+ID4gUm9ja2NoaXAgZGV2aWNlIGRvIG5vdCBwZXJmb3JtIGNsZWFuIHJlYm9vdCBhcyBz
b21lIG9mIHRoZSBJUAo+ID4gYmxvY2sgYXJlIG5vdCByZWxlYXNlZCBiZWZvcmUgY2xlYW4gcmVi
b290IGFuZCBpdCdzIHJlbWFpbiBzdHVjay4KPiA+IExpa2UgUENJZSBhbmQgTU1DLCBXZSBuZWVk
IHRvIGxvb2sgaW50byB0aGlzIGFzIHdlbGwuCj4KPiBBcyBtZW50aW9uZWQgYmVmb3JlLCB0aGF0
IGxpa2VseSBoYXMgbm90aGluZyB0byBkbyB3aXRoIHRoZSBQTUlDLCBhbmQKPiByZWFsbHkgc291
bmRzIGxpa2UgdGhlIGlzc3VlIHdpdGggVHJ1c3RlZCBGaXJtd2FyZSBub3QgcmVlbmFibGluZyBh
bGwKPiB0aGUgU29DIHBvd2VyIGRvbWFpbnMgYmVmb3JlIHJlc2V0IC0gYSBmaXggZm9yIHRoYXQg
aGFzIGFscmVhZHkgYmVlbgo+IGlkZW50aWZpZWQsIHNlZSBoZXJlOgo+IGh0dHBzOi8vZm9ydW0u
YXJtYmlhbi5jb20vdG9waWMvNzU1Mi1yb2MtcmszMzk5LXBjLXJlbmVnYWRlLWVsaXRlLz9kbz1m
aW5kQ29tbWVudCZjb21tZW50PTkwMjg5Cj4KPiBSb2Jpbi4KPgoKSWYgd2UgZ28gd2l0aCBJMkMg
c2h1dGRvd24gZmVhdHVyZSwgc29tZSBob3cgc29tZSBkZXZpY2Ugd2lsbCBub3QKcmVsZWFzZSBy
ZXNvdXJjZXMgYW5kIGl0IHJlbWFpbnMgc3R1Y2sgYmVmb3JlIHRoZSBpbml0aWFsaXphdGlvbiBu
ZXh0IHUtYm9vdC4KU2VlIHRoZSBsb2cgYmVsb3cuIGh0dHBzOi8vcGFzdGViaW4uY29tL3h4d3ZF
UmF6CgpBVEYgY2hhbmdlcyB3aWxsIHNvbWUgaW50byBhZmZlY3QgYWZ0ZXIgdGhlIHJlc3RhcnQg
b2YgdGhlIGRldmljZXMuCkZZSSBJIGFtIHRlc3Rpbmcgd2l0aCBhbGwgdGhlIGxhdGVzdCBBRlQg
cGF0Y2hlcyBmcm9tIEFybWJpYW4gYW5kIGxhdGVzdCB1LWJvb3QuCgotQW5hbmQKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
