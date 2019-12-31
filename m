Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EB512D6DF
	for <lists+linux-rockchip@lfdr.de>; Tue, 31 Dec 2019 08:51:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GpVQUViEEp115d3DgA1XkR4QwudAB2MCwbtLcsQTjOk=; b=BRfldlOs5yHmWl
	9QS0usouvpSFllA3GZma9I7al9gY8zwefrYREXzXC+Q2++j8OQXsFad31Xqq3OrAhKA+KUBovKzp0
	3jPUZE+jXJIeg4kyRiHdAuV7Jxr3QgJmeNh9gHmTQpd4uDY5yYzU2W8Jzc2zzW5BGNO6dqv1GUIjp
	bof1ud5gNsP9Ja1O1vMy1hH6iGNjhpDD9FnLGr0UoWhxrLmGMDsE8cs+9KprroJYXDhfRnS6DBj1B
	1CfvIsOrTZc9Soqy5AY7YVGE9DW2NyYnTdYHVTEn3VOccafweOI95FZMaakpANTVqEUlBj7yDurHM
	uJ3jTjT2HKM01IaDBKlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imCIt-0007UB-Ae; Tue, 31 Dec 2019 07:50:59 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imCIp-0007Tk-RQ
 for linux-rockchip@lists.infradead.org; Tue, 31 Dec 2019 07:50:57 +0000
Received: by mail-io1-xd44.google.com with SMTP id b10so33368275iof.11
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2019 23:50:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=n0YEAjIXMckkVa27wpq+CvMJ8quINqHcklnwN6wq1XU=;
 b=HgJZVeAKrtSAFB+ur2R3domHyCGHQDg052VBb3Z4T/tIj6KkKZb6HRG8mGUmIUKGQy
 Fhb9aWO6paEu5DKyj8qe0IY5zkMbNuirjizLOfyMaLtWISsnqeZg3z7thM4NbFZiY63z
 oZT+smPr8fXk2tMV8SOWLxJHtgr0pq36wuIan3XiAi9HKGPT710mR94MCgZ0as594h7x
 qd7yEAXNi0ZsTsgXXapsfwKBts2UdXhU/Zami7OCxlya8LW7ahL3qjUWpcUoKmjNXvx7
 1U0meCIOcCan5SQnLYheVAfmeEPwP89VhACoJ1IcHGAcusxM7gpipj6CmdhaP4pFR2DA
 4zlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=n0YEAjIXMckkVa27wpq+CvMJ8quINqHcklnwN6wq1XU=;
 b=Uz4zHdDPQOmv1XDMXLxg6XvO5VHlqLYx4xu5w9tb1qmlOQKDD6RPEbQGiz6Zn0PxLz
 dgvkaadwuSdIp5baTEdPPZx2Ya/eWx6EQ/43qux03Lf3k/4i9XvsRWPdcjt9DyBJBcUU
 L1GwgOOMISJRvvjXNnvP9FnnCnk1OiEnwVJuQkLYpCSte0G8GUWc2Lldqpme3/OgKFx2
 3H+jXFMjuAPkYZqpjHkZsXRxzx1SNa1s3214w7gzUZkv7OGDGSPWAklqh8CBsoTTUTlx
 4JaeSUUDwQp+DAS4BwF9s9EvyZqf7LvbA6yEuXJqBCSNWS6cuPx9BI0ty2joEd5HLply
 Ym6w==
X-Gm-Message-State: APjAAAXsUq4YNrhMXgzDx3YJ+afmFraYe3QwnyX7zxkKl0lJ0e8c/riz
 cJ8K121j3kczjSD0JjBb3EsSeOVkAg9/aZ7UGwc=
X-Google-Smtp-Source: APXvYqyHWWmAKFZBNhAPESA77IsCsJmzDvzi6alsXAjn0y6AajVtfJMloVhI5HwvqjAFmJ5R9Jj5iOC0ntPLWjGP7ME=
X-Received: by 2002:a6b:7201:: with SMTP id n1mr41709390ioc.37.1577778653609; 
 Mon, 30 Dec 2019 23:50:53 -0800 (PST)
MIME-Version: 1.0
References: <20191230082819.30191-1-jagan@amarulasolutions.com>
 <20191230082819.30191-8-jagan@amarulasolutions.com>
 <CAJs94EYBrwf9Pt0R-_OypT-JHWGFpZYxRhKcUXWgXTFJi9O0HA@mail.gmail.com>
 <CAMty3ZDkaVCBmKeofqn7p+EVGdHx3NZDt13kN6Nx_WVFSF5Pyg@mail.gmail.com>
In-Reply-To: <CAMty3ZDkaVCBmKeofqn7p+EVGdHx3NZDt13kN6Nx_WVFSF5Pyg@mail.gmail.com>
From: "Matwey V. Kornilov" <matwey.kornilov@gmail.com>
Date: Tue, 31 Dec 2019 10:50:42 +0300
Message-ID: <CAJs94EacaLU4QJkhKAm6+v_=rtyNWkeCoYONLF43qTVSCko-cw@mail.gmail.com>
Subject: Re: [PATCH v5 7/7] doc: boards: Add rockchip documentation
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_235055_916160_D2C677EF 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matwey.kornilov[at]gmail.com)
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
Cc: U-Boot Mailing List <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Akash Gajjar <akash@openedev.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

0L/QvSwgMzAg0LTQtdC6LiAyMDE5INCzLiDQsiAxMTo1OSwgSmFnYW4gVGVraSA8amFnYW5AYW1h
cnVsYXNvbHV0aW9ucy5jb20+Ogo+Cj4gSGksCj4KPiBPbiBNb24sIERlYyAzMCwgMjAxOSBhdCAy
OjExIFBNIE1hdHdleSBWLiBLb3JuaWxvdgo+IDxtYXR3ZXkua29ybmlsb3ZAZ21haWwuY29tPiB3
cm90ZToKPiA+Cj4gPiBIZWxsbywKPiA+Cj4gPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaCBzZXQu
Cj4gPiBDdXJyZW50bHksIEkgaGF2ZSB0aGUgZm9sbG93aW5nIGNvbmNlcm4gYWJvdXQgZG9jdW1l
bnRhdGlvbiBhbmQKPiA+IG92ZXJhbGwgcHJvcG9zZWQgdS1ib290IGRlcGxveSBwcm9jZWR1cmUu
Cj4gPgo+ID4gVGhlcmUgaXMgYSB1c2UgY2FzZSwgd2hlbiBJIGhhdmUgdG8gdXNlIFJvY2tjaGlw
IHByb3ByaWV0YXJ5IFRQTAo+ID4gYmluYXJ5IGFuZCBkZXBsb3kgaXQgaW5zdGVhZCBvZiB1LWJv
b3QncyBvbmUgdG9nZXRoZXIgd2l0aCB1LWJvb3QgU1BMCj4gPiBhbmQgSVRCIGltYWdlcy4KPiA+
IEl0IGlzIHJlcXVpcmVkIGZvciBkZWJ1Z2dpbmcgcHVycG9zZXMgYmVjYXVzZSB1bmZvcnR1bmF0
ZWx5IHUtYm9vdCBUUEwKPiA+IGlzIHVzdWFsbHkgbGVzcyBzdGFibGUgdGhhdCBwcm9wcmlldGFy
eSBvbmUuIEFuZCBzd2l0Y2hpbmcgdGhlIFRQTAo+ID4gYmluYXJ5IGlzIGJhc2ljYWxseSB0aGUg
Zmlyc3Qgc3RlcCB3aGVuIEkgc2VlIHJhbmRvbSBzdHJhbmdlIGNyYXNoZXMuCj4gPiBJdCBpcyBh
IGdvb2Qgd2F5IHRvIGxvY2F0ZSBhbiBpc3N1ZSBvcmlnaW4uCj4gPgo+ID4gQ291bGQgd2Ugc29t
ZWhvdyBlbnN1cmUgdGhhdCB0aGlzIGJhY2t1cCBkZXBsb3ltZW50IHBsYW4gaXMgc3RpbGwKPiA+
IHBvc3NpYmxlIGFuZCBkb2N1bWVudGVkIGluIHRoZSB0ZXh0IGhlcmU/IEl0IHdvdWxkIGJlIGdy
ZWF0IGlmIHRoZQo+ID4gdXNlciBjb3VsZCBsZWFybiB0aGUgcHJvY2VkdXJlIGZyb20gdGhlIHRl
eHQsIG5vdCBmcm9tIHRoZSBzb3VyY2UKPiA+IGNvZGUsIHJlY292ZXJpbmcgY29ycmVjdCBvZmZz
ZXRzLgo+Cj4gWW91IG1lYW4gdG8gc2F5IHJrYmluID0+IFNQTCA9PiBVLUJvb3QgcHJvcGVyID8g
aWYgeWVzLCBJIGRvIGFncmVlCgpZZXMsIEkgbWVhbiBzby4KSSB0aGluayBpdCB3b3VsZCBiZSBn
cmVhdCB0byBoYXZlIHNvbWV0aGluZyBsaWtlIHRoZSBzZWN0aW9uCmRlc2NyaWJpbmcgd2hlcmUg
ZG8gdGhlIHRoaW5ncyBjYW1lIGZyb20gYW5kIHRoZSBsYXlvdXQgd2hpY2ggaXMgdW5kZXIKdGhl
IGhvb2QuCgo+IHdpdGggdGhpcyBwb2ludCBhbmQgaXQgaXMgd29ydGggdG8gZG9jdW1lbnQgaXQg
YXMgd2VsbC4gS2V2ZXIsIHdpbGwKPiB0aGF0IGJlIG9rYXkgZm9yIHlvdT8KPgo+IEphZ2FuLgoK
Ci0tCldpdGggYmVzdCByZWdhcmRzLApNYXR3ZXkgVi4gS29ybmlsb3YKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
