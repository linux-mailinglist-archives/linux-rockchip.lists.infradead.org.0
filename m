Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7CD24455
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 May 2019 01:26:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1N91P69lqfKgAwBGVtnO0G7GyEKd6X5F9GrMxcO5Nlo=; b=mVK0l0g4gmnZA3
	9hA19rDaNIrljd7E6AmcrK79qQeDQ46dTiQXb2kGS9YLZKza44DIomBV1hTWs/VF3oUQe04tlET4l
	wDfjA85wEBHUKuO4z3JoebfIDdUmbPG4wD3eZ5RkyGfGXAb/5QKgYa8ta8164t8PN2B1J1/Fw0pxt
	dtww77SQ12Txqz+8ZfF0xPYzZaNZSw8cdh31+ZOyAgyDZD0sHLw5Gq+5hf5op681+5lqFKRBrtk5c
	2Az3EG/AadgbzqkCCFkT8J8MVtN15kh8uuzNjYrBtecXWE4FEkpG0BUaVyVdrGiBytWPSR6aIbuPj
	KBsyU4QhjpDxTznlBV+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSrfu-0003RF-CW; Mon, 20 May 2019 23:26:34 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSrfm-0003JR-EE
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 23:26:27 +0000
Received: by mail-vk1-xa43.google.com with SMTP id d7so4350463vkf.1
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 16:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=v15ImxXPR82zUC1L9RntmNVljNfZ+KHeuqCJcdfthSU=;
 b=XldTkhejOHyY3VTVRV+hQCD0Mji5ZKkA81D54mqtww+D8rxW79ml/7uspfRba3bqbT
 O+/vJy6pNTe+sH5I3xUvVEIqt8GLD7yg6qfiixUrO0gR+1BEv+40KGwQEAOi6aaqEp6k
 fxsJozVSlGGmyVy+f4DJYp0UhgWTsBh/IBwG4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=v15ImxXPR82zUC1L9RntmNVljNfZ+KHeuqCJcdfthSU=;
 b=o0x3kw5OsVA1lPAGBb05DGu+aGkShJLQ58Q0P1t4z0XfZ9RAbv6dOj78WX9D0idDkI
 XkCWnyYJWP/ExVcurXMQoui1Wthkd3cRdsVDbE76HfJcMUI4UK4ugWVLN3G+LhOoW+VR
 RQyIYYOkeeXy9r+q8ATdqHxoiPeaR2bPsq42lZoo2nHmURjAT/djOm39UjVbDh9UE9zG
 g34G/qIBQuUVGSTjXAKCWcIi8bQkulpawxR51uS6AnrfXO4M80jXX4yabgWtE7tw/IE2
 gUlR/V+RGXg4n8t5ajKwtDHNj+3U+whRxvDQQDhOHyAfZ+oIHP/r/oULj8YGw08Y1TIX
 ZLIg==
X-Gm-Message-State: APjAAAVYH9Q+tqfp42mAdTZJbQAoyyFrXvIZY3x2HbqgdWzaSaF+xZH/
 bkkWpbfaq0oDOJtVmsIFQewKcu3NHvg=
X-Google-Smtp-Source: APXvYqzP26I79PhiJNlwYPl7ioIEebWXNfxkE76RgPGaPQ3YZ2anyWevWjWcWTvSWVZ4wJ/nO5BU1w==
X-Received: by 2002:a1f:5742:: with SMTP id l63mr10701609vkb.44.1558394785229; 
 Mon, 20 May 2019 16:26:25 -0700 (PDT)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com.
 [209.85.222.47])
 by smtp.gmail.com with ESMTPSA id k125sm7121621vkd.41.2019.05.20.16.26.23
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 16:26:24 -0700 (PDT)
Received: by mail-ua1-f47.google.com with SMTP id 94so5953977uam.3
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 16:26:23 -0700 (PDT)
X-Received: by 2002:ab0:4a97:: with SMTP id s23mr1167110uae.19.1558394783438; 
 Mon, 20 May 2019 16:26:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190520220051.54847-1-mka@chromium.org>
 <20190520220051.54847-2-mka@chromium.org>
In-Reply-To: <20190520220051.54847-2-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 20 May 2019 16:26:10 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UfVwGbraO91Rq2vKA5-H1uZhMPeoE4h+qWH39f0DqnXA@mail.gmail.com>
Message-ID: <CAD=FV=UfVwGbraO91Rq2vKA5-H1uZhMPeoE4h+qWH39f0DqnXA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] ARM: dts: rockchip: Use the GPU to cool CPU
 thermal zone of veyron mickey
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_162626_474174_21284058 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpPbiBNb24sIE1heSAyMCwgMjAxOSBhdCAzOjAxIFBNIE1hdHRoaWFzIEthZWhsY2tlIDxt
a2FAY2hyb21pdW0ub3JnPiB3cm90ZToKPgo+IE9uIHJrMzI4OCB0aGUgQ1BVIGFuZCBHUFUgdGVt
cGVyYXR1cmVzIGFyZSBjb3JyZWxhdGVkLiBMaW1pdCB0aGUgR1BVCj4gZnJlcXVlbmN5IG9uIHZl
eXJvbiBtaWNrZXkgdG8gNDAwIE1IeiBmb3IgQ1BVIHRlbXBlcmF0dXJlcyA+PSA2NcKwQwo+IGFu
ZCB0byAzMDAgTUh6IGZvciBDUFUgdGVtcGVyYXR1cmVzID49IDg1wrBDLgo+Cj4gVGhpcyBtYXRj
aGVzIHRoZSBjb25maWd1cmF0aW9uIG9mIHRoZSBkb3duc3RyZWFtIENocm9tZSBPUyAzLjE0IGtl
cm5lbCwKPiB0aGUgJ29mZmljaWFsJyBrZXJuZWwgZm9yIG1pY2tleS4KPgo+IFNpZ25lZC1vZmYt
Ynk6IE1hdHRoaWFzIEthZWhsY2tlIDxta2FAY2hyb21pdW0ub3JnPgo+IC0tLQo+IENoYW5nZXMg
aW4gdjI6Cj4gLSBhZGRlZCAnY3B1X3dhcm1fbGltaXRfZ3B1JyB0byB0aHJvdHRsZSBHUFUgZm9y
IFQuY3B1ID49IDY1wrBDCj4gLSByZW1vdmVkIGNvbW1lbnQgc2F5aW5nIHRoYXQgR1BVIGlzbid0
IHRocm90dGxlZCBiZXlvbmQgNDAwIE1Iego+ICAgYmFzZWQgb24gQ1BVIHRlbXBlcmF0dXJlCj4g
LSB1cGRhdGVkIGNvbW1pdCBtZXNzYWdlCj4KPiBOb3RlOiB0aGlzIHBhdGNoIGRlcGVuZHMgb24g
IkFSTTogZHRzOiByb2NrY2hpcDogQWRkICNjb29saW5nLWNlbGxzCj4gZW50cnkgZm9yIHJrMzI4
OCBHUFUiIChodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdvcmsvcGF0Y2gvMTA3NTAwNS8p
Cj4gLS0tCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tbWlja2V5LmR0cyB8IDE0
ICsrKysrKysrKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQoKUmV2aWV3ZWQtYnk6IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9t
aXVtLm9yZz4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
