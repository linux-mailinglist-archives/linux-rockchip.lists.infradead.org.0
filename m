Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF386156C4C
	for <lists+linux-rockchip@lfdr.de>; Sun,  9 Feb 2020 20:52:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8HIYSwAvc0W0WI2kXq7auwNn8kn2Tkp95rlh8D3eYc=; b=WuD2mX/Knkjprc
	+uCYPUUDQGa6mdYwR+T6hvq/wurrpAAwfpH94+mklAWJe+rXZo8blTn2xOBL61Qs7Q/fY0zSJcYqK
	pyXZDIwv8bkmKTa+Df8tBjT+/5QahxQ5+a3W7HJYBrlC/Dq5QG+1aqQT2EX6+vyp8T3FBPey+NliJ
	0P2qZQ9vNJJhdp/TiJFp2QSVA0tGp+UMylmd3lluDDaOQ041PVo1t+R1X+hy68YCe0yw1mCO/lKXO
	7XhyikR8JyYvpFw2aGcwmFzlmWCLVYetkIWaZLA1JTkNjrX9OPLwPa/2PpmlcKQfB2PKpBaGRhsB2
	L1o9ETKb9vsKPHB/wHXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0sdI-0005pV-Eb; Sun, 09 Feb 2020 19:52:44 +0000
Received: from mail-qv1-f66.google.com ([209.85.219.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0sdD-0005of-Q3
 for linux-rockchip@lists.infradead.org; Sun, 09 Feb 2020 19:52:42 +0000
Received: by mail-qv1-f66.google.com with SMTP id z3so2227228qvn.0
 for <linux-rockchip@lists.infradead.org>; Sun, 09 Feb 2020 11:52:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=9kxR+EOHYcdR6Z8bHW9eSvAhALnhcuq0cWxlCWqNXvY=;
 b=tahWV5DM1HHMH7TECLRNDuI6WJzA4Sl5v8v3uicE7LP24zFbCclgSUaNY95iPfixYf
 GME1JXE3nvFSqLwBRCsM0Bvu0tVPLxC5dNf2Ca5FtgsmeaDUpIR8/NYQJH4tvsa59Kjj
 ZdPZ48Yb2bvl8267o3PWwwl2ZntU0mYmQ2PfOBUDgzxlut6Wcw6dJkIznkdCVcaENQ60
 GEI8Ylzt+Q0bSjX3nar6F/YLeHXDokXJaxwK4o6yH17Nj4YGFIt7LwC1OaNqSFvRSrOG
 YSIxsl4nxG06U+SOGImatgtnR64OiFt030+qywN/i9kvdVo/Okr65UeAPONRQxTb4gK8
 OJOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=9kxR+EOHYcdR6Z8bHW9eSvAhALnhcuq0cWxlCWqNXvY=;
 b=MekzUkEYnHGWfF9IeKcoay+1WyeT+woKPv7B1AjMfjElhXamvR6zGWEfyZ004pf+BY
 D9nxxgJlPzmCtlzgRIkq7VAUgkD+yu1w8QqtRb8SAoh7tti1R/+CPOPAg680SGNlen5E
 cR5WK8Q6QjZpTFql5aUCIwXCdR6TdH9KT8v78r4ZZIBL0oUjy4hSSWzbZTCU6Nk3i3CI
 txro28ztP1nL9/KESNsYYxip179IoPlFx47i6fdVZAVoo4A5R5TOeBMr7Aj+G+Y2yFcs
 PaH8bS9KUAddcEkZV8mW/g8gT6l204jAhL6otbIypuBXgaQX3MhNEPoMqJOfc27NYmyd
 7zvQ==
X-Gm-Message-State: APjAAAVvz/+Z39w0sTId1dQxSnE+XvTQsmQ3fR7793JZOnpBUf1okGlW
 ZWellAEo3jzjBcNItK46fS4W7g==
X-Google-Smtp-Source: APXvYqwB9qzDeIuHq0xVxU8nDDVJfdaDkoOiXOfSLioqA/jrz/w5T69LQY5/uYA+6gycEZQXW35UAg==
X-Received: by 2002:a05:6214:1433:: with SMTP id
 o19mr5828337qvx.87.1581277951412; 
 Sun, 09 Feb 2020 11:52:31 -0800 (PST)
Received: from skullcanyon ([192.222.193.21])
 by smtp.gmail.com with ESMTPSA id i7sm4670791qki.83.2020.02.09.11.52.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Feb 2020 11:52:30 -0800 (PST)
Message-ID: <74fea061a52ee3f8e25793bf9e47eba90a52c3e3.camel@ndufresne.ca>
Subject: Re: [PATCH v3 0/3] Enable Hantro G1 post-processor
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Date: Sun, 09 Feb 2020 14:52:29 -0500
In-Reply-To: <20191113175603.24742-1-ezequiel@collabora.com>
References: <20191113175603.24742-1-ezequiel@collabora.com>
User-Agent: Evolution 3.34.3 (3.34.3-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_115239_848367_BD012EA9 
X-CRM114-Status: GOOD (  24.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.66 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.66 listed in wl.mailspike.net]
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

TGUgbWVyY3JlZGkgMTMgbm92ZW1icmUgMjAxOSDDoCAxNDo1NiAtMDMwMCwgRXplcXVpZWwgR2Fy
Y2lhIGEgw6ljcml0IDoKPiBIaSBhbGwsCj4gCj4gVGhlIEhhbnRybyBHMSBWUFUgcG9zdC1wcm9j
ZXNzb3IgYmxvY2sgY2FuIGJlIHBpcGVsaW5lZCB3aXRoCj4gdGhlIGRlY29kZXIgaGFyZHdhcmUs
IGFsbG93aW5nIHRvIHBlcmZvcm0gb3BlcmF0aW9ucyBzdWNoIGFzCj4gY29sb3IgY29udmVyc2lv
biwgc2NhbGluZywgcm90YXRpb24sIGNyb3BwaW5nLCBhbW9uZyBvdGhlcnMuCj4gCj4gV2hlbiB0
aGUgcG9zdC1wcm9jZXNzb3IgaXMgZW5hYmxlZCwgdGhlIGRlY29kZXIgaGFyZHdhcmUKPiBuZWVk
cyBpdHMgb3duIHNldCBvZiBOVjEyIGJ1ZmZlcnMgKHRoZSBuYXRpdmUgZGVjb2RlciBmb3JtYXQp
LAo+IGFuZCB0aGUgcG9zdC1wcm9jZXNzb3IgaXMgdGhlIG93bmVyIG9mIHRoZSBDQVBUVVJFIGJ1
ZmZlcnMsCj4gYWxsb2NhdGVkIGZvciB0aGUgcG9zdC1wcm9jZXNzZWQgZm9ybWF0Lgo+IAo+IFRo
aXMgd2F5LCBhcHBsaWNhdGlvbnMgb2J0YWluIHBvc3QtcHJvY2Vzc2VkCj4gKHNjYWxlZCwgY29u
dmVydGVkLCBldGMpIGJ1ZmZlcnMgdHJhbnNwYXJlbnRseS4KPiAKPiBUaGlzIGZlYXR1cmUgaXMg
aW1wbGVtZW50ZWQgYnkgZXhwb3NpbmcgdGhlIHBvc3QtcHJvY2Vzc2VkIHBpeGVsCj4gZm9ybWF0
cyBvbiBFTlVNX0ZNVCwgb3JkZXJlZCBhcyAicHJlZmVycmVkIHBpeGVsZm9ybWF0IGZpcnN0IjoK
PiAKPiB2NGwyLWN0bCAtZCAxIC0tbGlzdC1mb3JtYXRzCj4gaW9jdGw6IFZJRElPQ19FTlVNX0ZN
VAo+IAlUeXBlOiBWaWRlbyBDYXB0dXJlIE11bHRpcGxhbmFyCj4gCj4gCVswXTogJ05WMTInIChZ
L0NiQ3IgNDoyOjApCj4gCVsxXTogJ1lVWVYnIChZVVlWIDQ6MjoyKQo+IAo+IFRoZSBvcmRlciBv
ZiBwcmVmZXJlbmNlIGluIEVOVU1fRk1UIGNhbiBiZSB1c2VkIGFzIGEgaGludAo+IGJ5IGFwcGxp
Y2F0aW9ucy4gVGhpcyBzZXJpZXMgdXBkYXRlcyB0aGUgdUFQSSBzcGVjaWZpY2F0aW9uCj4gYWNj
b3JkaW5nbHkuCgpBcyBJJ20gaW1wbGVtZW50aW5nIHRoaXMsIEkgcmVhbGl6ZSB0aGF0IHRoZXJl
IG1heSBtZSBhIGdhcCBpbiBiZWluZwphYmxlIHRvIGltcGxlbWVudCBib3RoIElQUCBhbmQgbm9u
LUlQUCBzdXBwb3J0IGluIGEgZ2VuZXJpYyBmcmFtZXdvcmsuClVubGlrZSB0aGUgYWJvdmUgY29t
bWVudCwgd2UgZm9yIG5vbi1JUFAgZGVjb2RlciB3ZSBjYW5ub3QgbmFpdmVseSBwaWNrCnRoZSBm
aXJzdCBmb3JtYXQuIEluIGZhY3Qgd2UgcGFyc2UgdGhlIGNocm9tYSBhbmQgZGVwdGggaW5mb3Jt
YXRpb24KZnJvbSB0aGUgaGVhZGVycyAobGlrZSBwcHMgZnJvbSBIMjY0KSwgYW5kIHdlIHBpY2sg
YSBtYXRjaGluZyBwaXhlbApmb3JtYXQuIFRoaXMgd2F5LCBpZiB3ZSBoYXZlIGEgMTBiaXQgc3Ry
ZWFtLCBhbmQgb3VyIElQIHN1cHBvcnRzIDEwYml0LAp3ZSB3aWxsIHBpY2sgYSAxMGJpdCBwaXhl
bCBmb3JtYXRzLCBvdGhlcndpc2UgZGVjb2Rpbmcgd2lsbCBqdXN0IGZhaWwuCgpOb25lIG9mIHRo
aXMgaW5mb3JtYXRpb24gaXMgcGFzc2VkIHRvIHRoZSBkcml2ZXIgcHJpb3IgdG8gdGhlIGZpcnN0
ClJlcXVlc3QgYmVpbmcgbWFkZSwgc28gdGhlcmUgaXMgbm8gd2F5IChhcyBvZiBjdXJyZW50IHNw
ZWMpIHRoYXQgdGhlCmRyaXZlciBjYW4gdmFsaWRhdGUgdGhpcyBpbiB0cnlfZm10IGFoZWFkIG9m
IHRpbWUuIFVubGVzcyBJIHNldCBwaWN0dXJlCnBhcmFtZXRlcnMgd2l0aG91dCBhIHJlcXVlc3Rf
ZmQgZm9yIHRoYXQgcHVycG9zZS4gSWYgdGhpcyBpcyB0aGUgd2F5LAp0aGVuIHdlIHNob3VsZCBk
b2N1bWVudCB0aGlzLgoKSXMgdGhpcyB0aGUgaW50ZW5kZWQgd2F5IHRvIG5lZ290aWF0aW9uIElQ
UCBmdW5jdGlvbnMgd2l0aCB0aGUgZHJpdmVyID8KCj4gCj4gV2hlbiB0aGUgYXBwbGljYXRpb24g
c2V0cyBhIHBpeGVsIGZvcm1hdCBvdGhlciB0aGFuIE5WMTIsCj4gdGhlIHBvc3QtcHJvY2Vzc29y
IGlzIHRyYW5zcGFyZW50bHkgZW5hYmxlZC4KPiAKPiBQYXRjaCAxIGlzIGEgY2xlYW51cHMgbmVl
ZGVkIHRvIGVhc2llciBpbnRlZ3JhdGUgdGhlIHBvc3QtcHJvY2Vzc29yLgo+IFBhdGNoIDIgaW50
cm9kdWNlcyB0aGUgcG9zdC1wcm9jZXNzaW5nIHN1cHBvcnQuCj4gUGF0Y2ggMyB1cGRhdGVzIHRo
ZSB1QVBJIHNwZWNpZmljYXRpb24uCj4gCj4gVGhpcyBpcyB0ZXN0ZWQgb24gUkszMjg4IHBsYXRm
b3JtcyB3aXRoIE1QRUctMiwgVlA4IGFuZAo+IEgyNjQgc3RyZWFtcywgZGVjb2RpbmcgdG8gWVVZ
MiBzdXJmYWNlcy4gRm9yIG5vdywgdGhpcyBzZXJpZXMKPiBpcyBvbmx5IGFkZGluZyBzdXBwb3J0
IGZvciBOVjEyLXRvLVlVWTIgY29udmVyc2lvbi4KPiAKPiBBcHBsaWVzIHRvIG1lZGlhL21hc3Rl
ci4KPiAKPiBGdXR1cmUgcGxhbnMKPiAtLS0tLS0tLS0tLS0KPiAKPiBJdCBzZWVtcyB0byBtZSB0
aGF0IHdlIHNob3VsZCBzdGFydCBtb3ZpbmcgdGhpcyBkcml2ZXIgdG8gdXNlCj4gcmVnbWFwLWJh
c2VkIGFjY2VzcyB0byByZWdpc3RlcnMuIEhvd2V2ZXIsIHN1Y2ggbW92ZSBpcyBvdXQgb2Ygc2Nv
cGUKPiBhbmQgbm90IGVudGlyZWx5IHJlbGF0ZWQgdG8gdGhpcyBwb3N0LXByb2Nlc3NvciBlbmFi
bGVtZW50Lgo+IAo+IFdlJ2xsIHdvcmsgb24gdGhhdCBhcyBmb2xsb3ctdXAgcGF0Y2hlcy4KPiAK
PiBDaGFuZ2Vsb2cKPiAtLS0tLS0tLS0KPiAKPiBDaGFuZ2VzIHYzOgo+IAo+ICogQWZ0ZXIgZGlz
Y3Vzc2luZyB3aXRoIEhhbnMgYW5kIFRvbWFzeiBkdXJpbmcgdGhlIG1lZGlhIHN1bW1pdAo+IGlu
IEVMQ0UsIHdlIGRlY2lkZWQgdG8gZ28gYmFjayBvbiB0aGUgTUMgY2hhbmdlcy4gVGhlIE1DIHRv
cG9sb2d5Cj4gaXMgbm93IHVudG91Y2hlZC4gVGhpcyBtZWFucyB0aGUgc2VyaWVzIGlzIG5vdyBz
aW1pbGFyIHRvIHYxLAo+IGV4Y2VwdCB3ZSBleHBsaWNpdGx5IHVzZSB0aGUgRU5VTV9GTVQgdG8g
aGludCBhYm91dCB0aGUgcG9zdC1wcm9jZXNzZWQKPiBmb3JtYXRzLgo+IAo+IENoYW5nZXMgdjI6
Cj4gCj4gKiBUaGUgZGVjb2Rlci0+cG9zdC1wcm9jZXNzb3IgdG9wb2xvZ3kgaXMgbm93IGV4cG9z
ZWQKPiAgIGV4cGxpY2l0bHkgYW5kIGFwcGxpY2F0aW9ucyBuZWVkIHRvIGNvbmZpZ3VyZSB0aGUg
cGlwZWxpbmUuCj4gICBCeSBkZWZhdWx0LCB0aGUgZGVjb2RlciBpcyBlbmFibGVkIGFuZCB0aGUg
cG9zdC1wcm9jZXNzb3IKPiAgIGlzIGRpc2FibGVkLgo+IAo+ICogUkdCIHBvc3QtcHJvY2Vzc2lu
ZyBvdXRwdXQgaGFzIGJlZW4gZHJvcHBlZC4gV2UgbWlnaHQKPiAgIGFkZCB0aGlzIGluIHRoZSBm
dXR1cmUsIGJ1dCBmb3Igbm93LCBpdCBzZWVtcyBpdCB3b3VsZAo+ICAgbWFrZSB0aGUgY29kZSBt
b3JlIGNvbXBsZXggd2l0aG91dCBhIHVzZS1jYXNlIGluIG1pbmQuCj4gICBSR0IgaXMgbXVjaCBt
b3JlIG1lbW9yeS1jb25zdW1pbmcgc28gbGVzcyBhdHRyYWN0aXZlCj4gICB0aGFuIFlVViwgYW5k
IG1vZGVybiBHUFVzIGFuZCBkaXNwbGF5IGNvbnRyb2xsZXJzIHN1cHBvcnQgWVVWLgo+IAo+ICog
VGhlIHBvc3QtcHJvY2Vzc29yIGltcGxlbWVudGF0aW9uIHN0aWxsIHN1cHBvcnRzIFJLMzI4OAo+
ICAgb25seS4gSG93ZXZlciwgYSBnZW5lcmljIHJlZ2lzdGVyIGluZnJhc3RydWN0dXJlIGlzIGlu
dHJvZHVjZWQKPiAgIHRvIG1ha2UgYWRkaXRpb24gb2Ygb3RoZXIgdmFyaWFudHMgc3VjaCBhcyBS
SzMzOTkgcmVhbGx5IGVhc3kuCj4gCj4gRXplcXVpZWwgR2FyY2lhICgzKToKPiAgIG1lZGlhOiBo
YW50cm86IENsZWFudXAgZm9ybWF0IG5lZ290aWF0aW9uIGhlbHBlcnMKPiAgIG1lZGlhOiBoYW50
cm86IFN1cHBvcnQgY29sb3IgY29udmVyc2lvbiB2aWEgcG9zdC1wcm9jZXNzaW5nCj4gICBtZWRp
YTogdmlkaW9jLWVudW0tZm10LnJzdDogY2xhcmlmeSBmb3JtYXQgcHJlZmVyZW5jZQo+IAo+ICAu
Li4vbWVkaWEvdWFwaS92NGwvdmlkaW9jLWVudW0tZm10LnJzdCAgICAgICAgfCAgIDQgKy0KPiAg
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9NYWtlZmlsZSAgICAgICAgIHwgICAxICsKPiAg
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm8uaCAgICAgICAgIHwgIDY0ICsrKysr
KystCj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jICAgICB8ICAg
OCArLQo+ICAuLi4vc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cxX2gyNjRfZGVjLmMgfCAg
IDIgKy0KPiAgLi4uL21lZGlhL2hhbnRyby9oYW50cm9fZzFfbXBlZzJfZGVjLmMgICAgICAgIHwg
ICAyICstCj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cxX3JlZ3MuaCB8
ICA1MyArKysrKysrCj4gIC4uLi9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZzFfdnA4X2Rl
Yy5jICB8ICAgMiArLQo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19oMjY0
LmMgICAgfCAgIDYgKy0KPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9faHcu
aCAgICAgIHwgIDEzICsrCj4gIC4uLi9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fcG9zdHBy
b2MuYyAgICB8IDE0MSArKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9zdGFnaW5nL21lZGlh
L2hhbnRyby9oYW50cm9fdjRsMi5jICAgIHwgMTA1ICsrKysrKysrLS0tLS0KPiAgZHJpdmVycy9z
dGFnaW5nL21lZGlhL2hhbnRyby9yazMyODhfdnB1X2h3LmMgIHwgIDEwICsrCj4gIDEzIGZpbGVz
IGNoYW5nZWQsIDM2NiBpbnNlcnRpb25zKCspLCA0NSBkZWxldGlvbnMoLSkKPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX3Bvc3Rwcm9jLmMK
PiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
