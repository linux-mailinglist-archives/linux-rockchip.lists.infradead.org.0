Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D771287F4
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Dec 2019 08:32:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9I/FjtoPc5mmmLdk1syTFQTn/3ofHpS44CNC0VS26Uc=; b=VikTeeXzFnme+E
	m84/JzO9rTWW2KTlXhx+Dj9Vlm6flI1ZQ4s5vr9xMIRsX0JdMxPWfTvwKhUHd9ZbYGgYe3fbNMqEc
	0BdibZ7x3uMrNwLdVuJJdvm/R7iBt9gS5zk0QMDINg71Q+dG+rlbP3SOpPFq4Q24h8U8A0eGVKZsk
	dLLaGIbRIvOdbtTm7MoxFr38vJGonLX7hpcvFoPwSUm3mXJmrkn+vOyIrBnFkaLeck3WikSE/TFdI
	37cZ22+62GoURJN/XrHzDFL3v4B2DVr+5dD8b0Bvds6qcO4Wog4oy6tI71HzyLjpoiSm0U4lOQvEj
	2VlJJ3ZdVprri4rp9MsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiZFo-0007LT-IA; Sat, 21 Dec 2019 07:32:48 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiZFl-0007L1-18
 for linux-rockchip@lists.infradead.org; Sat, 21 Dec 2019 07:32:46 +0000
Received: by mail-il1-x143.google.com with SMTP id g12so9989033ild.2
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Dec 2019 23:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xMEKbPHzeEmsFnTT4dL/roZbI5cCDBwOk0hIYEEEhlc=;
 b=b04Joeo4QjqYptWRCePLhRZPgNDzSBGuMbqdAv5D6yOFfbMmHB1pued8M16iOKW8Hq
 yB9M2LEiv+EOYGXHZTjJ0403PnRj6y+U2u4rAEuBcpYDF4jMoUI7CcyJjs4AJKbJwCC9
 7rT0R7Odl2w44fs9c/Q244aWmz+VlH4+jV3rw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xMEKbPHzeEmsFnTT4dL/roZbI5cCDBwOk0hIYEEEhlc=;
 b=BtmfI7Y/CL/xt7VziDPuwaSIZAoZ6RP08xyWxxlTqT5PYs+lTYnUFtIJ9+U2F38a4G
 VRViNZlUe//Oz58C1OPp3y7VMA4kJg5lL7Y5SCMrEfOgQWl6sySnpYnH2VnUKTL1sdDD
 w2PZllpkZwrWDh5Psk6Lp7JRf75Mo5+ADPQtBE7Fz8D4cYZVeV6LQM94c+LLNNhW2GmO
 MjFvnhpvUGh4CoZ4SAS8rBu9SEYvxzZ15kMragT3BiGwpHDbfTackgYkUSoZFj7qG37Z
 Y4W6CzUuEbr0lNZxSEfGcoxtcptAo7GFDGOIjlttNPcDksQWbud/xS2vwNwrfOAuoLPZ
 7yQQ==
X-Gm-Message-State: APjAAAVThbmrGzGHdwI/WRlRTy1sdaLmw1Jcl9cTNhYzz8N4ND38VJnT
 CegH2Opw7E+htJC3aF8eFka8PU7MaopWuVn7POz9Og==
X-Google-Smtp-Source: APXvYqwIqhf4OaPtHS3ysZ5DT9NBPHBPezSBzcs+xyFW7/gTxdf6TNPhqWvq+Voyito+J5Zv7+VgS9PnNLqgSZJ3ZfQ=
X-Received: by 2002:a92:860f:: with SMTP id g15mr15685343ild.297.1576913563377; 
 Fri, 20 Dec 2019 23:32:43 -0800 (PST)
MIME-Version: 1.0
References: <20191211132623.430-1-jagan@amarulasolutions.com>
 <20191211132623.430-2-jagan@amarulasolutions.com>
 <1E12E6D7-5401-4EF5-9D74-DFC6F8216799@theobroma-systems.com>
In-Reply-To: <1E12E6D7-5401-4EF5-9D74-DFC6F8216799@theobroma-systems.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sat, 21 Dec 2019 13:02:32 +0530
Message-ID: <CAMty3ZDoNCCMPTC_OoAyEwOoSMsa79KRmW9+LTC8opbinUiYPg@mail.gmail.com>
Subject: Re: [PATCH 1/2] Revert "rockchip: spi: fix off-by-one in chunk size
 computation"
To: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_233245_210218_553317E7 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgUGhpbGlwcCwKCk9uIFdlZCwgRGVjIDExLCAyMDE5IGF0IDc6MTAgUE0gUGhpbGlwcCBUb21z
aWNoCjxwaGlsaXBwLnRvbXNpY2hAdGhlb2Jyb21hLXN5c3RlbXMuY29tPiB3cm90ZToKPgo+Cj4K
PiA+IE9uIDExLjEyLjIwMTksIGF0IDE0OjI2LCBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29s
dXRpb25zLmNvbT4gd3JvdGU6Cj4gPgo+ID4gVGhlIG1heGltdW0gdHJhbnNmZXIgbGVuZ3RoIChp
biBhIHNpbmdsZSB0cmFuc2FjdGlvbikgZm9yIHRoZSBSb2NrY2hpcAo+ID4gU1BJIGNvbnRyb2xs
ZXIgaXMgNjRLZnJhbWVzIChpLmUuIDB4MTAwMDAgZnJhbWVzKSBvZiA4Yml0IG9yIDE2Yml0Cj4g
PiBmcmFtZXMgYW5kIGlzIGVuY29kZWQgYXMgKG51bV9mcmFtZXMgLSAxKSBpbiBDVFJMUjEuCj4g
Pgo+ID4gU28gdGhlIDB4MTAwMDAgaXMgb2Zmc2V0IHZhbHVlIGZvciA2NEsgYnV0IHRoZSBhY3R1
YWwgc2l6ZSB2YWx1ZSB3b3VsZAo+ID4gYmUgJ21pbnVzIDEnIGZyb20gMHgxMDAwMC4KPgo+IE5B
Sy4gUGxlYXNlIHNlZSAyIGNvZGUgbGluZXMgYmVsb3cgeW91ciBjaGFuZ2UgdG8gc2VlIHRoYXQg
dGhlIOKAnG1pbnVzIDHigJ0KPiBpcyBhcHBsaWVkIHRoZXJl4oCmIHNvIGEgdG9kbyBvZiAweDEw
MDAwIHdpbGwgd3JpdGUgMHhmZmZmIHRvIHJlZ3MtPmN0cmxyMS4KPgo+IFRoZSBwcm9ibGVtIG11
c3QgYmUgc29tZXdoZXJlIGVsc2UgYW5kIHRoaXMgcGF0Y2ggd2lsbCBvbmx5IG1hc2sgdGhlCj4g
dW5kZXJseWluZyBpc3N1ZS4KClBsZWFzZSBjaGVjayB0aGUgYmVsb3cgY2hhbmdlcy4gdGhlIG1h
eCB0cmFuc2ZlciBzaXplIGlzIDY0SyAtIDEgd2hpY2gKaXMgMHhmZmZmIGFuZCB3ZSBuZWVkIHRv
IHdyaXRlIC0xIG9mIHRoaXMgdG8gY3IxLgoKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvbmV4dC9saW51eC1uZXh0LmdpdC9jb21taXQvZHJpdmVycy9zcGkv
c3BpLXJvY2tjaGlwLmM/aWQ9NTE4NWE4MWMwMmQ0MTE4YjExZTZjYjdiNWZiZjZmMTVmZjdhZmY5
MApodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xp
bnV4LW5leHQuZ2l0L2NvbW1pdC9kcml2ZXJzL3NwaS9zcGktcm9ja2NoaXAuYz9pZD0wNGIzN2Qy
ZDAyYzBhNWFlMmY0ZTU5MzI2ZWY2ZGVhZmYxOGUwNDU2CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
