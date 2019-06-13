Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5161E432F4
	for <lists+linux-rockchip@lfdr.de>; Thu, 13 Jun 2019 08:26:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x77yHRGd5XFJeJGVoZQ3SZUigtH5omhXhYOoUFArEns=; b=VaxZGgabkUijTd
	X6p/pU6wsFcFjsAa+fipBdcs3XXjyOL3lAVQWACq+qJtrSz0abbpmKOcNq65Bm4tW0sP7YRILtlRz
	wlJlJkgFEtp6VJ2qmR8Den8kgMXQDwV1Vi529xpGBYlXnbtsCNGtBHqYJV/lPRLm+fL4kRutgta4E
	RngQW+z3mMxPGlWIg51fsyBODqbrBr9LqPXKhye+z2iAFmGl8IqFXinOHSGgGEo4H7dZMg/eAxXNo
	y7kUmsqWemIBaEtIALeK2+hOydONILe5aBEp4RNRrCU7yVb4mWZX+lLUtzGON7t2FAudggsi2NiZR
	YND1cj4GXoHvXVV0GAyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJBo-0002i1-0C; Thu, 13 Jun 2019 06:26:24 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJBk-0002fn-2S
 for linux-rockchip@lists.infradead.org; Thu, 13 Jun 2019 06:26:21 +0000
Received: by mail-io1-xd43.google.com with SMTP id u19so15063960ior.9
 for <linux-rockchip@lists.infradead.org>; Wed, 12 Jun 2019 23:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PDKWWY7SjVxHaJR094ZO8/RjsjsP7h3qYHCjglqvTzc=;
 b=Qz4z7LM7dn3bSZ+w7t21ktGaeaTQ8AuZvFs1X342qAJyG5pDVUx1zpXKCtouygLkyM
 vP6TwLkb0X/q4ZdLaNzXL0AQ1WMQ00ucF3iIViya0x5JIAPWGT55h0+0u6k9MD5h9Ocn
 QgLpSVjnNLK/OryccnpPyFz7Mw96KUegtYB9s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PDKWWY7SjVxHaJR094ZO8/RjsjsP7h3qYHCjglqvTzc=;
 b=E0rkPyZTubkQb63B4Wa9RFiEfCu1EwzWsKfZ9vpe32/v7S3piKcnn4+zIdlpOsEqdg
 PrlZeTRChLzF/Fe7o4YeZ5f1h2zpb7H0vSDQ1AeEVXHTWjbFSHW9OwxakYgKAEwOmOM4
 29JqzXjJpGeOljlCbHjynVMdEqfOJKIpj1NHaIExzwH3wRJsgEBnFtcNq0kk6zgJKJfm
 v4QYdN/raDBYzs7EfGhoS8lVPG7vSCz0MK3324h8vgfkap9m2vFm8FaQCe010Mvq6XHM
 ZKqCbzi5UZ69y3UwRK2c9W9SPu8cZwCWXWCBevWUk/EjfzD+2X/rdzps9+QeYPsxQuna
 z9FQ==
X-Gm-Message-State: APjAAAUuvGS/vuUHg7wo3KCgO3R+bndrZKRnao81W9M4dYrak0z5AOew
 MYSc1kT6yJUr46eh1lHxhBvFi0drtaZavenpHGW2Kg==
X-Google-Smtp-Source: APXvYqwRNGt73bn8PuCBfwiaDRUaK5nlKyOKrKYCeZkRnL+7BeMp2JDFfxpKpnhP3aH6/fk6XFTduV48dlh5cCEJDMo=
X-Received: by 2002:a6b:6b14:: with SMTP id g20mr50855200ioc.28.1560407179123; 
 Wed, 12 Jun 2019 23:26:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
 <349AB0AF-4DEE-4BC8-8FEF-B3DBD34564E4@theobroma-systems.com>
 <CAMty3ZDxop1nKHOxGYC0O7b8HL_ybmBSZr1P8gbDpz7eKyOyDw@mail.gmail.com>
 <b4c1bc19-70b5-d6c4-6764-1c1356b47b38@rock-chips.com>
In-Reply-To: <b4c1bc19-70b5-d6c4-6764-1c1356b47b38@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 13 Jun 2019 11:56:08 +0530
Message-ID: <CAMty3ZCbBZr9RuonkFHgh57=uTysUX+ye9B+PuJKK9uiT-Ztuw@mail.gmail.com>
Subject: Re: [PATCH 00/92] ram: rk3399: Add LPDDR4 support
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_232620_202650_8FAC6B65 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: YouMin Chen <cym@rock-chips.com>, U-Boot-Denx <u-boot@lists.denx.de>,
 Simon Glass <sjg@chromium.org>, Akash Gajjar <gajjar04akash@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gMTMsIDIwMTkgYXQgNzoyMSBBTSBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJv
Y2stY2hpcHMuY29tPiB3cm90ZToKPgo+IEhpIEphZ2FuLAo+Cj4KPiBPbiAwNi8xMS8yMDE5IDEx
OjAzIFBNLCBKYWdhbiBUZWtpIHdyb3RlOgo+Cj4gTm90ZTogUHVtYSByazMzOTkgaGFzIFNQTCBz
aXplIG92ZXJmbG93LCBiZXR0ZXIgdG8gZW5hYmxlIFRQTAo+IGZvciB0aGlzIGJvYXJkLgo+Cj4g
V2UgbmVlZCB0byBrZWVwIFB1bWEgb24gYSBTUEwtb25seSBjb25maWd1cmF0aW9uIGZvciB0aGUg
dGltZSBiZWluZy4KPiBQbGVhc2UgbWFrZSBzdXJlIHRoYXQgdGhlIExQRERSNCBjb2RlIGlzIGFu
IG9wdGlvbmFsIGZlYXR1cmUgdGhhdCBkb2VzIG5vdAo+IGluY3JlYXNlIHRoZSBEUkFNLWRyaXZl
ciBzaXplIGZvciBib2FyZHMgdGhhdCBkb27igJl0IG5lZWQvd2FudCBpdC4KPgo+IFdlIGhhdmUg
ZmV3IGJvYXJkcyBkbyBoYXZlIFRQTC1ydW5uYWJsZSwgd291bGQgYmUgYW55IHRlY2huaWNhbCBp
c3N1ZQo+IHRvIHN3aXRjaCBwdW1hIHRvIFRQTD8gYmVjYXVzZSB3ZSBoYXZlIGxwZGRyNCBjb2Rl
IHBhcnQgb2YgZXhpc3RpbmcKPiBkcml2ZXIgaXRzZWxmIGFuZCBpdCByZXF1aXJlIGV4dHJhIGlm
ZGVmIHRvIGNvbnNpZGVyIHdoaWNoIGluZGVlZCBsb29rCj4gYXdmdWwgZnJvbSBjb2RlIHBvaW50
LW9mLXZpZXcuCj4KPiBEb3NlIHRoZSBkcml2ZXIgc2l6ZSBpbmNyZWFzZSB0b28gbXVjaCBmb3Ig
UHVtYSBiZWNhdXNlIG9mIHRoZSBscGRkcjQKPiBpbml0IGxvZ2ljIG9yIGJlY2F1c2Ugb2YgdGhl
IHR3byBleHRyYSB0aW1pbmcgZGF0YT8gVGhlIHR3byB0aW1pbmcgZGF0YQo+IGFyZSBwcmV0dHkg
YmlnLCBtYXliZSB3ZSBkbyBub3QgbmVlZCB0aGVtIGlmIHRoZSBib2FyZCBpcyBub3QgbHBkZHI0
PwoKWWVzLCBhbG9uZyB3aXRoIHRoZSBjb2RlIHRoYXQgc3VwcG9ydCBzZXQgcmF0ZSBmb3IgbHBk
ZHI0LiBTdGlsbAp0aGlua2luZyBob3cgd2UgY2FuIG1hbmFnZSB0byBtYXJrIHRoZSBscGRkcjQg
Y2hhbmdlcyBpbmRlcGVuZGVudCwKbWFya2luZyBpZmRlZiBpbiBhbGwgdGhlIGNvZGUgbG9vayBh
d2Z1bC4gbGV0IG1lIGtub3cgaWYgeW91IGhhdmUgYW55CmlucHV0cz8KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
