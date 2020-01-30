Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2200F14D523
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Jan 2020 03:18:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dBUDeu43kAF5kX4qlmqQVeXjfzCdjXMBLraCjo5L5N8=; b=s1H1uju4ElOcBe
	n7dUCftKyN9jZKhHkYGb5WUuvHu+IU2GIlV+5Lf735MbkjYDKg7vz5Ii9BphZlHsHdq+/nGgvDAwn
	uNjLghsLwy/KDPi8HeeDVBBhZxxTHdQjVrxdLAO91sCcmmDVCMnQeRz6PZY/4mJMcfD4z7BfDg44/
	CBKNPhAQF9eEBNCZdknH64Yvs7SAwBVnIObeZQyErCKJX7NS9zojFFVnjN/49uQq2oRtcIHEd9Ol+
	9jlxWXxEUPT5LhihcYnzssjRcpSB6C2+wNUNbAp191EzGsKyN4a1IE5Pl4SXT1YkoBwyxGrZK24L/
	KUgvrr7COZdKi+koI7ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwzPH-0005Bw-0c; Thu, 30 Jan 2020 02:18:11 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwzPD-0005BK-St
 for linux-rockchip@lists.infradead.org; Thu, 30 Jan 2020 02:18:09 +0000
Received: by mail-lf1-x142.google.com with SMTP id l18so1189091lfc.1
 for <linux-rockchip@lists.infradead.org>; Wed, 29 Jan 2020 18:18:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vNfGc4UtmdCy8J8HqYJ4HsZrdUFv9Pf3xzizU5XPco4=;
 b=n5CbLvo4YuSCyLxCZaxUp+DdVnXZf/rjxmOTPPyGECufDAkHwMgkZ+vJ9+qI0jIZIs
 T9Fb1NQG09ujZF/KkD8Dz2EuWI0ab7xY12+xOYoggZThf0M5rgb4I2njilnnoUvmXY8Q
 0bZYwvHyvlpfndL0Nx7hOYZR3PXEn5KNJmL6I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vNfGc4UtmdCy8J8HqYJ4HsZrdUFv9Pf3xzizU5XPco4=;
 b=R0vaYp5blDMdrU+7KMO2GK23HyX/pIf9H4VYaHktUzaGDQXAonzaLotW8+GooJ0oGu
 asYXJP4l70X8ShZ71Fix7GHraT/aj6ul3sRon5CET2jp/9l3Mo5AXsLeIsw6miRCOl86
 NsO7BUa809XCVvjxT65hi85C92QmjEJM6hkki7Fcdb/GCjjgTePRmE06optQGrGTmLeE
 9+N0hzuy6PEN918e4uMSf4lEnxsDN3Ktjt3Cn3LZtTpWpUX/P49lz824bwjzW1SDiFXb
 jUOdINTTi2Qn219s+1tQqIpkPPkvNwvpPs1uloaUkKJd6kXNQwsdVBl3hcAmW5gDJKg1
 FwRw==
X-Gm-Message-State: APjAAAXb5X4OuB+ApgyxzF+416xAPpUBw+ObJE+Tb3ySiLNjiJVOKbgg
 xwKmb4vHEMK7539QA5yvpVzVho74gUBRSEuMWXfZkg==
X-Google-Smtp-Source: APXvYqx0AfxWHFtiKila808EWD+JhCDqmQ66X7m7/N+P6c2nt66KbXk9jcbH6XyMQbu4jtm3D+G11BZlcyOchcR2cVw=
X-Received: by 2002:ac2:5496:: with SMTP id t22mr1263633lfk.85.1580350682890; 
 Wed, 29 Jan 2020 18:18:02 -0800 (PST)
MIME-Version: 1.0
References: <20200104083806.3930-1-jagan@amarulasolutions.com>
 <20200104083806.3930-6-jagan@amarulasolutions.com>
In-Reply-To: <20200104083806.3930-6-jagan@amarulasolutions.com>
From: Simon Glass <sjg@chromium.org>
Date: Wed, 29 Jan 2020 19:17:37 -0700
Message-ID: <CAPnjgZ3PkXZe5GX9xB2fSteLdiz+=xhgCXFvdUgz0qGeEVFHKQ@mail.gmail.com>
Subject: Re: [PATCH v6 5/6] rockchip: Add Single boot image (with binman,
 pad_cat)
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_181807_957169_B5ED6E61 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot Mailing List <u-boot@lists.denx.de>,
 "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 Akash Gajjar <akash@openedev.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gU2F0LCA0IEphbiAyMDIwIGF0IDAxOjM4LCBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29s
dXRpb25zLmNvbT4gd3JvdGU6Cj4KPiBBbGwgcm9ja2NoaXAgcGxhdGZvcm1zIHN1cHBvcnQgVFBM
IG9yIFNQTC1iYXNlZCBib290bG9hZGVyCj4gaW4gbWFpbmxpbmUgd2l0aCBVLUJvb3QgcHJvcGVy
IGFzIGZpbmFsIHN0YWdlLiBGb3IgZWFjaAo+IHN0YWdlIHdlIG5lZWQgdG8gYnVybiB0aGUgaW1h
Z2Ugb24gdG8gZmxhc2ggd2l0aCByZXNwZWN0aXZlCj4gb2Zmc2V0cy4KPgo+IFRoaXMgcGF0Y2gg
Y3JlYXRlcyBhIHNpbmdsZSBib290IGltYWdlIGNvbXBvbmVudCB1c2luZwo+IC0gYmlubWFuLCBm
b3IgYXJtMzIgcm9ja2NoaXAgcGxhdGZvcm1zCj4gLSBwYWRfY2F0LCBmb3IgYXJtNjQgcm9ja2No
aXAgcGxhdGZvcm1zLgo+Cj4gVGhpcyB3b3VsZCBoZWxwIHVzZXJzIHRvIGdldCByaWQgb2YgYnVy
bmluZyBkaWZmZXJlbnQKPiBib290IHN0YWdlIGltYWdlcy4KPgo+IFRoZSBuZXcgaW1hZ2UgY2Fs
bGVkICd1LWJvb3Qtcm9ja2NoaXAuYmluJwo+IHdoaWNoIGNhbiBidXJuIGludG8gZmxhc2ggbGlr
ZToKPgo+IOKCuSBzdWRvIGRkIGlmPXUtYm9vdC1yb2NrY2hpcC5iaW4gb2Y9L2Rldi9zZGEgc2Vl
az02NAo+Cj4gVGhpcyB3b3VsZCBzdXBwb3J0IGFsbCByb2NrY2hpcCBwbGF0Zm9ybXMsIGV4Y2Vw
dCByazMxMjgKPiBzaW5jZSBpdCBkb2Vzbid0IHN1cHBvcnQgZm9yIFNQTCB5ZXQuCj4KPiBDYzog
S2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KPiBDYzogTWF0d2V5IFYuIEtv
cm5pbG92IDxtYXR3ZXkua29ybmlsb3ZAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2Fu
IFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFJldmlld2VkLWJ5OiBLZXZlciBZ
YW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgo+IC0tLQo+ICBNYWtlZmlsZSAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAxNCArKysrKysrKysrKystLQo+ICBhcmNoL2FybS9LY29uZmln
ICAgICAgICAgICAgICAgICAgfCAgMSArCj4gIGFyY2gvYXJtL2R0cy9yazMwMzYtdS1ib290LmR0
c2kgICB8ICAyICsrCj4gIGFyY2gvYXJtL2R0cy9yazMyODgtdS1ib290LmR0c2kgICB8ICAyICsr
Cj4gIGFyY2gvYXJtL2R0cy9yb2NrY2hpcC11LWJvb3QuZHRzaSB8IDIxICsrKysrKysrKysrKysr
KysrKysrKwo+ICBpbmNsdWRlL2NvbmZpZ3Mvcm9ja2NoaXAtY29tbW9uLmggfCAgMyArKysKPiAg
NiBmaWxlcyBjaGFuZ2VkLCA0MSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vZHRzL3JvY2tjaGlwLXUtYm9vdC5kdHNpCgpSZXZpZXdl
ZC1ieTogU2ltb24gR2xhc3MgPHNqZ0BjaHJvbWl1bS5vcmc+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
