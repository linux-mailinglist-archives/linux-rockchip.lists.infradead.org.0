Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AD25C18E
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jul 2019 19:00:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=loUKiB5F0xr6zqImUZI9maz+7hqkt2gxKd+SYP8bFok=; b=hmHmBgsODN6MR+
	xQKN2f8/dq5ZVhRtpoGOZ3c19apTCi/rL5s+StaQ+Uwbwca8V84WmNIphSvLzAnt7PYb+Kvl+UMlu
	/4fcQz3v25ydwmUazDJR5Y1nJJy+O3DwD9eKyloeKECtQMgF+WpvziZSKbFFFtXH3Wk0fculEtlJu
	8wWhN1gSwZBcf5e76ROb4BcFN6wZQQpMAk0D9Gy23V4tU5sN/+ogspkqnrhQmfe4BQpOEeB2zUO0l
	zZ10sR+B4F9Wpa2FJYJ+0JakUKSieuoDVh8DeUvkLvgfD3H3XGVIYuXWPhbmjk0yvavbj4hWCXeA4
	52oJqOvWTEy/QVZayDFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhzew-0004pe-7u; Mon, 01 Jul 2019 17:00:06 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhzes-0004Km-IA
 for linux-rockchip@lists.infradead.org; Mon, 01 Jul 2019 17:00:04 +0000
Received: by mail-io1-xd44.google.com with SMTP id m24so30463304ioo.2
 for <linux-rockchip@lists.infradead.org>; Mon, 01 Jul 2019 10:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JolxjoC61TKJKf0jb4dN4P28SKpb+zH+zGH1st4ym90=;
 b=Qd4WduNYQlNNrJRAp36QmrwJY099eDBeJ105dOffHIB5X7OI66k1xlFc+yOJ0OeT8W
 JAeFJ2lUgNto0dagfE4x46ArMzjM/yE45uJXQQ80irLhpGEMjpsZkWyFodEwxLWk510o
 vqEu++m0gselpSMr634ICkAselddnefqJ4+VU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JolxjoC61TKJKf0jb4dN4P28SKpb+zH+zGH1st4ym90=;
 b=Xa0Omio92ozO3mXyCOOZzDcFcrvpy7pMlaRasxpVj10zLuWyitlR5AAu3GEW+/USio
 GPNPs4bG+9SnVNFDQsIMPDXew/pU4PfRHBoES92e+M5PPzEu6OQ0CDAjwcDvIzP13HK4
 7KJTDxp8d7P8rnMfgXi0fxv/p3c92estp8InCzWcDTUdgd8hAb625gUTN3frw3KJVw0T
 /hfmMspOuSA/AjZpunc/HRia5EJhgdAz/eGZD1V57LCId9SCE93h2yzqyhvx3/akSEXE
 9lm5KMWCv9omnCGwSK3eXfRLRinIE9EQ62vspZKap23HtP3DlIkKYX2fcQ+hgd4YLdcC
 Eh9Q==
X-Gm-Message-State: APjAAAXA+aGFZwfuyDE1n0W7ozX8BZPeCQ4QNYK7BKpDLH/cetUNgYzm
 s4vL3TJbGkmWj0M6mzWBm3whB2OtwPI=
X-Google-Smtp-Source: APXvYqxT4+xXn2recZtbDIhjiAHc5fUiPjQjvcqrafUF/yLjH61cK6lNda0lvRlmL4e98pl4oC/ong==
X-Received: by 2002:a6b:1494:: with SMTP id 142mr7367770iou.72.1562000401668; 
 Mon, 01 Jul 2019 10:00:01 -0700 (PDT)
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com.
 [209.85.166.46])
 by smtp.gmail.com with ESMTPSA id w23sm10287586iod.12.2019.07.01.09.59.58
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jul 2019 09:59:59 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id e5so30425470iok.4
 for <linux-rockchip@lists.infradead.org>; Mon, 01 Jul 2019 09:59:58 -0700 (PDT)
X-Received: by 2002:a02:6597:: with SMTP id u145mr30963069jab.26.1562000398582; 
 Mon, 01 Jul 2019 09:59:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-2-dianders@chromium.org>
 <20190630200259.GA15102@ravnborg.org>
In-Reply-To: <20190630200259.GA15102@ravnborg.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 1 Jul 2019 09:59:46 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V3eiBXP4Z5KMxD=-csV5EAD9cY4MzuAOtMyphpDmW+_A@mail.gmail.com>
Message-ID: <CAD=FV=V3eiBXP4Z5KMxD=-csV5EAD9cY4MzuAOtMyphpDmW+_A@mail.gmail.com>
Subject: Re: [PATCH v5 1/7] dt-bindings: Add panel-timing subnode to
 simple-panel
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_100002_621742_8776EFBF 
X-CRM114-Status: GOOD (  31.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, LKML <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 =?UTF-8?Q?Enric_Balletb=C3=B2?= <enric.balletbo@collabora.com>,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, Matthias Kaehlcke <mka@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpPbiBTdW4sIEp1biAzMCwgMjAxOSBhdCAxOjAzIFBNIFNhbSBSYXZuYm9yZyA8c2FtQHJh
dm5ib3JnLm9yZz4gd3JvdGU6Cj4KPiBIaSBEb3VnbGFzLgo+Cj4gU29tZSBsb25nIG92ZXJkdWUg
cmV2aWV3IGZlZWRiYWNrLgo+Cj4gT24gTW9uLCBBcHIgMDEsIDIwMTkgYXQgMTA6MTc6MThBTSAt
MDcwMCwgRG91Z2xhcyBBbmRlcnNvbiB3cm90ZToKPiA+IEZyb206IFNlYW4gUGF1bCA8c2VhbnBh
dWxAY2hyb21pdW0ub3JnPgo+ID4KPiA+IFRoaXMgcGF0Y2ggYWRkcyBhIG5ldyBzdWJub2RlIHRv
IHNpbXBsZS1wYW5lbCBhbGxvd2luZyB1cyB0byBvdmVycmlkZQo+ID4gdGhlIHR5cGljYWwgdGlt
aW5nIGV4cHJlc3NlZCBpbiB0aGUgcGFuZWwncyBkaXNwbGF5X3RpbWluZy4KPiA+Cj4gPiBDaGFu
Z2VzIGluIHYyOgo+ID4gIC0gU3BsaXQgb3V0IHRoZSBiaW5kaW5nIGludG8gYSBuZXcgcGF0Y2gg
KFJvYikKPiA+ICAtIGRpc3BsYXktdGltaW5ncyBpcyBhIG5ldyBzZWN0aW9uIChSb2IpCj4gPiAg
LSBVc2UgdGhlIGZ1bGwgZGlzcGxheS10aW1pbmdzIHN1Ym5vZGUgaW5zdGVhZCBvZiBwaWNraW5n
IHRoZSB0aW1pbmcKPiA+ICAgIG91dCAoUm9iL1RoaWVycnkpCj4gPiBDaGFuZ2VzIGluIHYzOgo+
ID4gIC0gR28gYmFjayB0byB1c2luZyB0aGUgdGltaW5nIHN1Ym5vZGUgZGlyZWN0bHksIGJ1dCBy
ZW5hbWUgdG8KPiA+ICAgIHBhbmVsLXRpbWluZyAoUm9iKQo+ID4gQ2hhbmdlcyBpbiB2NDoKPiA+
ICAtIFNpbXBsaWZ5IGRlc2MuIGZvciB3aGVuIG92ZXJyaWRlIHNob3VsZCBiZSB1c2VkIChUaGll
cnJ5L0xhdXJlbnQpCj4gPiAgLSBSZW1vdmVkIFJvYiBIIHJldmlldyBzaW5jZSBpdCdzIGJlZW4g
YSB5ZWFyIGFuZCB3b3JkaW5nIGNoYW5nZWQKPiA+IENoYW5nZXMgaW4gdjU6Cj4gPiAgLSBSZW1v
dmVkIGJpdCBhYm91dCBPUyBtYXkgaWdub3JlIChSb2IvRXplcXVpZWwpCj4gPgo+ID4gQ2M6IERv
dWcgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9yZz4KPiA+IENjOiBFcmljIEFuaG9sdCA8
ZXJpY0BhbmhvbHQubmV0Pgo+ID4gQ2M6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+
Cj4gPiBDYzogSmVmZnkgQ2hlbiA8amVmZnkuY2hlbkByb2NrLWNoaXBzLmNvbT4KPiA+IENjOiBS
b2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPgo+ID4gQ2M6IFN0w6lwaGFuZSBNYXJjaGVz
aW4gPG1hcmNoZXVAY2hyb21pdW0ub3JnPgo+ID4gQ2M6IFRoaWVycnkgUmVkaW5nIDx0aGllcnJ5
LnJlZGluZ0BnbWFpbC5jb20+Cj4gPiBDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKPiA+
IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBDYzogbGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gU2lnbmVkLW9mZi1ieTogU2VhbiBQYXVsIDxzZWFu
cGF1bEBjaHJvbWl1bS5vcmc+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEb3VnbGFzIEFuZGVyc29uIDxk
aWFuZGVyc0BjaHJvbWl1bS5vcmc+Cj4gPiAtLS0KPiA+Cj4gPiAgLi4uL2JpbmRpbmdzL2Rpc3Bs
YXkvcGFuZWwvc2ltcGxlLXBhbmVsLnR4dCAgIHwgMjIgKysrKysrKysrKysrKysrKysrKwo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3BhbmVsL3NpbXBsZS1wYW5l
bC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9wYW5lbC9z
aW1wbGUtcGFuZWwudHh0Cj4gPiBpbmRleCBiMmI4NzJjNzEwZjIuLjkzODgyMjY4YzBiOSAxMDA2
NDQKPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3Bh
bmVsL3NpbXBsZS1wYW5lbC50eHQKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9kaXNwbGF5L3BhbmVsL3NpbXBsZS1wYW5lbC50eHQKPiA+IEBAIC0xNSw2ICsxNSwx
NiBAQCBPcHRpb25hbCBwcm9wZXJ0aWVzOgo+ID4gICAgKGhvdCBwbHVnIGRldGVjdCkgc2lnbmFs
LCBidXQgdGhlIHNpZ25hbCBpc24ndCBob29rZWQgdXAgc28gd2Ugc2hvdWxkCj4gPiAgICBoYXJk
Y29kZSB0aGUgbWF4IGRlbGF5IGZyb20gdGhlIHBhbmVsIHNwZWMgd2hlbiBwb3dlcmluZyB1cCB0
aGUgcGFuZWwuCj4gPgo+ID4gK3BhbmVsLXRpbWluZyBzdWJub2RlCj4gPiArLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPiA+ICsKPiA+ICtUaGlzIG9wdGlvbmFsIHN1Ym5vZGUgaXMgZm9yIGRldmljZXMg
d2hpY2ggcmVxdWlyZSBhIG1vZGUgZGlmZmVyaW5nCj4gPiArZnJvbSB0aGUgcGFuZWwncyAidHlw
aWNhbCIgZGlzcGxheSB0aW1pbmcuCj4gTWV5YmUgYWRkIGhlcmUgdGhhdCBpdCBpcyBleHBlY3Rl
ZCB0aGF0IHRoZSBwYW5lbCBoYXMgaW5jbHVkZWQgdGltaW5nCj4gaW4gdGhlIGRyaXZlciBpdHNl
bGYsIGFuZCBub3QgYXMgcGFydCBvZiBEVC4KPiBTbyB3aGF0IGlzIHNwZWNpZmllZCBoZXJlIGlz
IGEgbW9yZSBwcmVjaXNlIHZhcmlhbnQsIHdpdGhpbiB0aGUgbGltaXRzCj4gb2Ygd2hhdCBpcyBz
cGVjaWZpZWQgZm9yIHRoZSBwYW5lbC4KClNlZSBkaXNjdXNzaW9ucyBwcmV2aW91cyB2ZXJzaW9u
cyBvZiB0aGlzIHBhdGNoLiAgU3BlY2lmaWNhbGx5IHlvdSBjYW4Kc2VlIHY0IGF0IDxodHRwczov
L3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEwODc1NTA1Lz4gYW5kIHYzCihwb3N0ZWQgYnkg
U2VhbikgYXQgPGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTAyMDc1OTEvPi4K
ClNwZWNpZmljYWxseTogQWNjb3JkaW5nIHRvIFJvYiBIIGl0IGlzIGdlbmVyYWxseSBub3QgcmVx
dWlyZWQgdG8KdmFsaWRhdGUgd2hhdCdzIGluIGRldmljZSB0cmVlLS1pdCBjYW4gYmUganVzdCBi
bGluZGx5IGFwcGxpZWQuICBUaHVzCnRoZSBiaW5kaW5ncyBzaG91bGRuJ3QgcmVhbGx5IHNheSBh
bnl0aGluZyBhYm91dCB0cnlpbmcgdG8gcmVjb25jaWxlCndpdGggdGhlIGRyaXZlciAoZXNwZWNp
YWxseSBzaW5jZSB0aGF0J3MgaGVhdmlseSByZWx5aW5nIG9uIHRoZQpjdXJyZW50IGRyaXZlciBp
bXBsZW1lbnRhdGlvbikuCgpBdCB0aGUgbW9tZW50IHRoZSBkcml2ZXIgc3RpbGwgZG9lcyB2YWxp
ZGF0ZSB0aGluZ3MgYW5kIHdlIGNvdWxkCmRpc2N1c3MgcmVtb3ZpbmcgdGhhdCBpbiBhIGZ1dHVy
ZSBwYXRjaHNldCBpZiBpdCB3YXMgZGVlbWVkIGltcG9ydGFudAovIGRlc2lyYWJsZS4KCgo+ID4g
K0Zvcm1hdCBpbmZvcm1hdGlvbiBvbiB0aGUgcGFuZWwtdGltaW5nIHN1Ym5vZGUgY2FuIGJlIGZv
dW5kIGluCj4gPiArZGlzcGxheS10aW1pbmcudHh0Lgo+IGRpc3BsYXktdGltaW5nIGRlZmluZXMg
b3Rpb25hbCBwcm9wZXJ0aWVzOgo+IGhzeW5jLWFjdGl2ZSwgcGl4ZWxjbGstYWN0aXZlLCBkb3Vi
bGVzY2FuIGV0Yy4KPiBJdCBpcyBub3QgZnJvbSB0aGUgYWJvdmUgb2J2aW91cyB3aGljaCBwcm9w
ZXJ0aWVzIGZyb20gZGlzcGxheS10aW1pbmdzCj4gdGhhdCBjYW4gYmUgc3BlY2lmaWVkIGZvciBh
IHBhbmVsLXRpbWluZyBzdWItbm9kZS4KPiBNYXliZSBiZWNhdXNlIHRoZXkgY2FuIGFsbCBiZSBz
cGVjaWZpZWQ/Cj4KPiBEaXNwbGF5LXRpbWluZyBhbGxvd3MgdGltaW5ncyB0byBiZSBzcGVjaWZp
ZWQgYXMgYSByYW5nZS4KPiBJZiBpdCBpcyBhbHNvIE9LIHRvIHNwZWNpZnkgYSByYW5nZSBmb3Ig
cGFubGUtdGltaW5nIHRoZW4gZXZlcnl0aGlnbiBpcwo+IGZpbmUuIEJ1dCBpZiB0aGUgcGFuZWwt
dGltaWduIHN1Ym5vZGUgZG8gbm90IGFsbG93IHJhbmdlcyB0aGlzIG5lZWRzIHRvCj4gYmUgc3Bl
Y2lmaWVkLgoKT25lIHRoaW5nIHRvIHRoaW5rIGFib3V0IGhlcmUgaXMgdGhhdCB0aGUgYmluZGlu
Z3MgYXJlIGEgYml0IGRpdm9yY2VkCmZyb20gdGhlIHJlYWwgd29ybGQuICBTcGVjaWZpY2FsbHkg
dGhlIGJpbmRpbmdzIHNob3VsZCBkZXNjcmliZQpoYXJkd2FyZSAvIHdoYXQncyBwb3NzaWJsZSBh
bmQgaXQncyBPSyBmb3IgYmluZGluZ3MgdG8gZGVzY3JpYmUgdGhpbmdzCnRoYXQgYXJlbid0IHll
dCBzdXBwb3J0ZWQgaW4gY29kZS4gIFlvdSd2ZSBnb3R0YSBiZSByZWFsbHkgY2FyZWZ1bApoZXJl
LCBvZiBjb3Vyc2UsIGJlY2F1c2UgaXQncyBlYXN5IHRvIHdyaXRlIHJpZGljdWxvdXMgYmluZGlu
Z3MgaWYKdGhlcmUgaXMgbm8gaW1wbGVtZW50YXRpb24gYmFja2luZyB0aGVtIHVwLCBidXQgaW4g
Z2VuZXJhbCB0aGF0J3MKc3VwcG9zZWQgdG8gYmUgdGhlIGlkZWEuCgpIZXJlIGl0IHNlZW1zIGxp
a2UgaXQgc2hvdWxkIGJlIHBvc3NpYmxlIHRvIHNwZWNpZnkgdGltaW5ncyBhcyBhIHJhbmdlCmFu
ZCB0aGF0IHdvdWxkIGJlIGEgc2Vuc2libGUgdGhpbmcgdG8gZG8uICAuLi5hbmQgd2UncmUgYWxy
ZWFkeSB1c2luZwpleGlzdGluZyBjb2RlIHRvIHBhcnNlIHRoaXMgbm9kZSwgc3BlY2lmaWNhbGx5
Cm9mX2dldF9kaXNwbGF5X3RpbWluZygpLiAgSWYgc2ltcGxlLXBhbmVsIGNhbid0ICh5ZXQpIGhh
bmRsZQpyZWNvbmNpbGluZyByYW5nZXMgc3BlY2lmaWVkIGluIERUIHRoZW4gcHJlc3VtYWJseSB3
ZSBzaG91bGRuJ3QgcmVseQpvbiB0aGF0IHlldC4gIC4uLmJ1dCBpZiBpdCBiZWNvbWVzIHVzZWZ1
bCB0aGVuIHdlIGNhbiBhZGQgaXQgbGF0ZXIuCi4uLmJ1dCBpdCdzIE9LIHRvIGFscmVhZHkgaGF2
ZSBpdCBpbiB0aGUgYmluZGluZ3MuCgpEaWQgdGhhdCBtYWtlIHNlbnNlPyAgSWYgSSdtIG1pc3Vu
ZGVyc3RhbmRpbmcgc29tZXRoaW5nIGFib3V0IHRoZQpzaXR1YXRpb24gdGhlbiBwbGVhc2UgeWVs
bCEgIDotKQoKSSB3aWxsIGFsc28gbm90ZSB0aGF0IHBlcmhhcHMgd2Ugc2hvdWxkbid0IG5pdC1w
aWNrIHRvbyBtdWNoIGFzIHBlcgpSb2IncyBjb21tZW50IGluIHRoZSBjb3ZlciBsZXR0ZXIgWzFd
IG9mIHY1IG9mIHRoZSBzZXJpZXMuClNwZWNpZmljYWxseSBoZSBzYWlkIHRoaXMgYmluZGluZyBp
cyBnb2luZyBhd2F5IGFueXdheS4KClN1bW1hcnk6IEkgdGhpbmsgSSBoYXZlIG5vIGFjdGlvbnMg
aGVyZSBhbmQgdGhpcyBjb3VsZCBnbyB0byBkcm0tbWlzYwp3aXRoIFRoZWlycnkncyBBY2sgcGx1
cyBvdGhlciB0YWdzLgoKClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdvcmsvY292
ZXIvMTA1NzAzOC8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
