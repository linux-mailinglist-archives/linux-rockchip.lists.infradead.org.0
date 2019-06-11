Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E55573D024
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 17:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mc1ERZM+UBZMpNr13g0QV2LR7g3f3m6obLuUhz1drSs=; b=JU6St7XCOcyb7J
	2iD9r9eNLLiD3izeADTcJhaaRLj8BDFG0dHRRsPNuLGGcx49bGw/RGEignuPLkq+ZcJnJfv06gvMj
	syDAIkJJaFANK3zub/Xoz8rKC0c8DOmkmLo/hq39kRM3idPp8csBo/w+nrALs/yO+4y6+weZ7+nLG
	wHK9lhiOchixB4i0HQC2nzxZtufGtUfy32Q1HlPnAvEJjj5hhVicBSKIkQ3kN1ZMSXmRnckkHd2iv
	n1sup+VHvHWZM36ti6mDfYhWDMOuwckC6vw+o0xDBlmnnR1nRWtkQwD8PEU4SSzl2lTepoIpcgWF6
	vnlN2EmOU0haEnJx6Y0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiJH-0005oK-FI; Tue, 11 Jun 2019 15:03:39 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiJD-0005nf-EH
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 15:03:37 +0000
Received: by mail-io1-xd44.google.com with SMTP id u13so10182979iop.0
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 08:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EkOAUeu3PH+LUl6Y9999ndCT282dFI3X8Va2fO8vGXI=;
 b=ne5HZBBznLXIFdUw2779+9cW/C9yvGjqdwCj68ccvswxHUkhBPoeo443QNf96xOnqp
 zuz/+ofASOUkwduXU7Mh5QQa07lJx8VqguYnK75zY/2c1GIeSlCSZunRPZn/MXQOzc99
 rNC7tpakTAEb1w4SWtGJPXLG6ahgoMU2wQafo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EkOAUeu3PH+LUl6Y9999ndCT282dFI3X8Va2fO8vGXI=;
 b=X74+I/6AP8WLzaQlIFnqNQyOkcITuypPXynrKL1q0T6unvWIB8eBioTHzYsm/ABwHD
 MVS+BmpaWCQMlLBRG+At//gS35erEhwsGhjb+rTLL/Hd1ETRdEhLeKenUQouotTjqDWl
 7kRgOiLT1S088TuGCTbKP/eeoqhlLtQxU+vr3XMZG8Xpp9kdfzeWS9NshX29SgsWEGGQ
 lW+LgC9vhKjXRKPmb6uIoLAetCTqqDFWKLS0J++8N57MwcZxSMLTeKQWNHhONuhHFim8
 wNEwUFNEEA/QBOhMINpYqJ22OV5DnHBfG5AOl74onszqfmx5j+SNZaFyMjbzSDEtmWhZ
 mm2g==
X-Gm-Message-State: APjAAAVMmauunpnmY/q3xeoXhAqnfYHl4QXsAVTUE055r5p80RD3Zgn1
 daH36oqdOXj86OoZ7RT7LU8qyw4jvF0rdhQ+lC172g==
X-Google-Smtp-Source: APXvYqz9mGrZdR+vd6/ME95dD9hj30sGN+bFoSt8gDp095rW4gbCBFUA3PtzQlb662TRMU0WFDpgFpdCP6hghZlw7iY=
X-Received: by 2002:a6b:6b14:: with SMTP id g20mr44519287ioc.28.1560265414054; 
 Tue, 11 Jun 2019 08:03:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
 <349AB0AF-4DEE-4BC8-8FEF-B3DBD34564E4@theobroma-systems.com>
In-Reply-To: <349AB0AF-4DEE-4BC8-8FEF-B3DBD34564E4@theobroma-systems.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 11 Jun 2019 20:33:22 +0530
Message-ID: <CAMty3ZDxop1nKHOxGYC0O7b8HL_ybmBSZr1P8gbDpz7eKyOyDw@mail.gmail.com>
Subject: Re: [PATCH 00/92] ram: rk3399: Add LPDDR4 support
To: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_080335_953583_2BC11CF5 
X-CRM114-Status: GOOD (  14.37  )
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
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMTEsIDIwMTkgYXQgODoyMyBQTSBQaGlsaXBwIFRvbXNpY2gKPHBoaWxpcHAu
dG9tc2ljaEB0aGVvYnJvbWEtc3lzdGVtcy5jb20+IHdyb3RlOgo+Cj4KPgo+ID4gT24gMTEuMDYu
MjAxOSwgYXQgMTY6NTAsIEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPiB3
cm90ZToKPiA+Cj4gPiBZZXMsIGl0IGNhbiBiZSBwb3NzaWJsZSB0byBicmVhayB0aGlzIHNlcmll
cyBpbnRvIG11bHRpcGxlIHN1YiBzZXJpZXMKPiA+IGJ1dCBpZGVhIGhlcmUgaXMgdG8gbWFyayBh
bGwgdGhlIHJlcXVpcmVkIGNoYW5nZXMgdG8gc3VwcG9ydCBMUEREUjQKPiA+IGluIHJrMzM5OSBp
biBvbmUgc2V0LiBpZiByZXF1aXJlZCB3ZSBjYW4gYnJlYWsgaXQgZnJvbSBuZXh0IHZlcnNpb25z
Lgo+ID4KPiA+IFRoaXMgaXMgdGhlIGluaXRpYWwgc2V0IGZvciBzdXBwb3J0aW5nIExQRERSNCB3
aXRoIGFzc29jaWF0ZWQKPiA+IGZlYXR1cmVzLgo+ID4KPiA+IFRoYW5rcyB0bwo+ID4gLSBZb3VN
aW4gQ2hlbgo+ID4gLSBBa2FzaCBHYWpqYXIKPiA+IC0gS2V2ZXIgWWFuZwo+ID4gZm9yIHN1cHBv
cnRpbmcgYWxsIHRoZSBoZWxwIG9uIHRoaXMgd29yay4KPiA+Cj4gPiBPbiBzdW1tYXJ5IHRoaXMg
c2VyaWVzIHN1cHBvcnQKPiA+IC0gQ29kZSB3YXJuaW5nIGFuZCBmaXhlcwo+ID4gLSByYW5rIGRl
dGVjdGlvbiwgdGhpcyB3b3VsZCByZXF1aXJlZCB0byBwcm9iZSBzaW5nbGUgY2hhbm5lbAo+ID4g
IHNkcmFtIGNvbmZpZ3VyZWQgaW4gTmFub1BJLU5FTzQKPiA+IC0gTFBERFI0IHN1cHBvcnQsIHRl
c3RlZCBpbiBSb2NrcHJvNjQgYW5kIFJvY2stUEktNAo+ID4KPiA+IHBhdGNoIDAwMDEgLSAwMDMz
OiBmaXggY29kZSB3YXJuaW5ncywgcHJpbnRzLCBuZXcgbWFjcm9zCj4gPgo+ID4gcGF0Y2ggMDAz
NCAtIDAwNTE6IHJhbmsgZGV0ZWN0aW9uLCBzZHJhbSBkZWJ1ZyBjb2RlCj4gPgo+ID4gcGF0Y2gg
MDA1MjogVXNlIEREUjMtMTgwMCBvbiBOYW5vUEktTkVPNAo+ID4KPiA+IHBhdGNoIDAwNTMgLSAw
MDg5OiBscGRkcjQgc3VwcG9ydAo+ID4KPiA+IHBhdGNoIDAwOTA6IExQRERSNC0xMDAgdGltaW5n
cwo+ID4KPiA+IHBhdGNoIDAwOTE6IFVzZSBMUEREUjQtMTAwIG9uIFJvY2twcm82NAo+ID4KPiA+
IHBhdGNoIDAwOTI6IFVzZSBMUEREUjQtMTAwIG9uIFJvY2stUEkgNAo+ID4KPiA+IE5vdGU6IFB1
bWEgcmszMzk5IGhhcyBTUEwgc2l6ZSBvdmVyZmxvdywgYmV0dGVyIHRvIGVuYWJsZSBUUEwKPiA+
IGZvciB0aGlzIGJvYXJkLgo+Cj4gV2UgbmVlZCB0byBrZWVwIFB1bWEgb24gYSBTUEwtb25seSBj
b25maWd1cmF0aW9uIGZvciB0aGUgdGltZSBiZWluZy4KPiBQbGVhc2UgbWFrZSBzdXJlIHRoYXQg
dGhlIExQRERSNCBjb2RlIGlzIGFuIG9wdGlvbmFsIGZlYXR1cmUgdGhhdCBkb2VzIG5vdAo+IGlu
Y3JlYXNlIHRoZSBEUkFNLWRyaXZlciBzaXplIGZvciBib2FyZHMgdGhhdCBkb27igJl0IG5lZWQv
d2FudCBpdC4KCldlIGhhdmUgZmV3IGJvYXJkcyBkbyBoYXZlIFRQTC1ydW5uYWJsZSwgd291bGQg
YmUgYW55IHRlY2huaWNhbCBpc3N1ZQp0byBzd2l0Y2ggcHVtYSB0byBUUEw/IGJlY2F1c2Ugd2Ug
aGF2ZSBscGRkcjQgY29kZSBwYXJ0IG9mIGV4aXN0aW5nCmRyaXZlciBpdHNlbGYgYW5kIGl0IHJl
cXVpcmUgZXh0cmEgaWZkZWYgdG8gY29uc2lkZXIgd2hpY2ggaW5kZWVkIGxvb2sKYXdmdWwgZnJv
bSBjb2RlIHBvaW50LW9mLXZpZXcuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
