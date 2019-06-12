Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B79E642AF5
	for <lists+linux-rockchip@lfdr.de>; Wed, 12 Jun 2019 17:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MByHIsdn0FrfbdbxyVVpIA8FgZVa5TUdpOf28hMe/wU=; b=WDpC5LneuQp3If
	XarZEpYMdxIdmhlWcbMRyGK61VX11mSRy6X1VPLnQ8kFT5bU9qfqUpaXG7VGtHTHOTMQKQXr2AOCd
	njgsE8UPTak41vV1dw0HtHjBIm0ZfjmO16FKAospLO0leKqA3I4NTXIsiii6062QNUHxEqDpCqUU/
	NDFG/WKUAsvxmLMIYQQrbxTBfEg7d99qt926GjTu8FhJ7sVtbezwF8D49yV46xcVRc0gSPEXPSrY8
	fEPK6PwdHmxvpQQaV0SOu4So82tom9xoOYiXk9Wnk9nS/6LdVjUcMU/aSrA9UFgIS6N07pe937CEn
	VyH3UjBN7LXLZybOu5bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb5DO-0002Hb-Vz; Wed, 12 Jun 2019 15:31:06 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb5DG-00029g-4n
 for linux-rockchip@lists.infradead.org; Wed, 12 Jun 2019 15:30:59 +0000
Received: by mail-oi1-x244.google.com with SMTP id m206so11967931oib.12
 for <linux-rockchip@lists.infradead.org>; Wed, 12 Jun 2019 08:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=x5xA0+lInL32p8QIG3W8O1MIQl8vGNq9faAXqrmmrRc=;
 b=CaK2WMbfYibm5pr3TrDnoyacuQhBkcPxeEfA3WN3gsJDbddGuzFyVss4Qtr6PqnrvZ
 KAKCa74L+DrOXNgvcBfgB1h8kd5rMBk1XXmpVPhnPwLf17KeOp78UywJfe3t0FCs1jHF
 YoHAs/+Vg6p3LqA0jZ2V3iGXKWjQDDXlgbAtk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=x5xA0+lInL32p8QIG3W8O1MIQl8vGNq9faAXqrmmrRc=;
 b=aLbXrboE5bmsiBcgB/amG9RZScH5kSki4/+R8VeN+yxt9//P6VP9Jn3nguliiOgg3r
 +N57hRNLqCchuRFcMG/AnNIDVvQM+aQjBeOFy+ARfn+6n5B/8G9MIwuttufl1AfkmAOl
 7ie788XrtEc0z5P68FqZYirXC8hiUAJ/Y9/NiWegXWW2v0TxTnurPpK5GqUDQGYBJQYB
 zNPDX5wIX04LoTX6/Xs/K0NIuA5bJdDsI9f0V+EQNDFEZ+FJmMxriFmBMrK+TBBDr6Nv
 B918MtWha9KX2/hroVD236k0ScNwGkkDZc0iI5YsJ8TE5X/w6l0cjtRoeKaoUmIwlg6q
 6EJQ==
X-Gm-Message-State: APjAAAVV1IUlNsgGZFhgWwfgY6smR71b98kZHzEMxIi+mBQRo1vyqzjT
 U8Ly9lHpbJOt7b6WLas5cuOqoCj87SNC0VwgBD01bA==
X-Google-Smtp-Source: APXvYqwMZJaKD/0Ce6/Gs2LlyuuV38AXdz+A0p5zOWvckdLvmgnrKg04tZ7iTnwqHTJ7oc7Q/2wsfm44W1utn3dY6j4=
X-Received: by 2002:a54:4693:: with SMTP id k19mr19816242oic.173.1560353455932; 
 Wed, 12 Jun 2019 08:30:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
 <349AB0AF-4DEE-4BC8-8FEF-B3DBD34564E4@theobroma-systems.com>
 <CAMty3ZDxop1nKHOxGYC0O7b8HL_ybmBSZr1P8gbDpz7eKyOyDw@mail.gmail.com>
 <FBD392EE-BC7F-462D-89BF-4B97A70CAD9A@theobroma-systems.com>
In-Reply-To: <FBD392EE-BC7F-462D-89BF-4B97A70CAD9A@theobroma-systems.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 12 Jun 2019 21:00:44 +0530
Message-ID: <CAMty3ZAmpsF-3hoDLe0SYsO3Ug7=htxmt1QLUrdya0jBYWOR9w@mail.gmail.com>
Subject: Re: [PATCH 00/92] ram: rk3399: Add LPDDR4 support
To: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_083058_343873_76EA7AA6 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
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

T24gVHVlLCBKdW4gMTEsIDIwMTkgYXQgODozNiBQTSBQaGlsaXBwIFRvbXNpY2gKPHBoaWxpcHAu
dG9tc2ljaEB0aGVvYnJvbWEtc3lzdGVtcy5jb20+IHdyb3RlOgo+Cj4KPgo+ID4gT24gMTEuMDYu
MjAxOSwgYXQgMTc6MDMsIEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPiB3
cm90ZToKPiA+Cj4gPiBPbiBUdWUsIEp1biAxMSwgMjAxOSBhdCA4OjIzIFBNIFBoaWxpcHAgVG9t
c2ljaAo+ID4gPHBoaWxpcHAudG9tc2ljaEB0aGVvYnJvbWEtc3lzdGVtcy5jb20+IHdyb3RlOgo+
ID4+Cj4gPj4KPiA+Pgo+ID4+PiBPbiAxMS4wNi4yMDE5LCBhdCAxNjo1MCwgSmFnYW4gVGVraSA8
amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+IHdyb3RlOgo+ID4+Pgo+ID4+PiBZZXMsIGl0IGNh
biBiZSBwb3NzaWJsZSB0byBicmVhayB0aGlzIHNlcmllcyBpbnRvIG11bHRpcGxlIHN1YiBzZXJp
ZXMKPiA+Pj4gYnV0IGlkZWEgaGVyZSBpcyB0byBtYXJrIGFsbCB0aGUgcmVxdWlyZWQgY2hhbmdl
cyB0byBzdXBwb3J0IExQRERSNAo+ID4+PiBpbiByazMzOTkgaW4gb25lIHNldC4gaWYgcmVxdWly
ZWQgd2UgY2FuIGJyZWFrIGl0IGZyb20gbmV4dCB2ZXJzaW9ucy4KPiA+Pj4KPiA+Pj4gVGhpcyBp
cyB0aGUgaW5pdGlhbCBzZXQgZm9yIHN1cHBvcnRpbmcgTFBERFI0IHdpdGggYXNzb2NpYXRlZAo+
ID4+PiBmZWF0dXJlcy4KPiA+Pj4KPiA+Pj4gVGhhbmtzIHRvCj4gPj4+IC0gWW91TWluIENoZW4K
PiA+Pj4gLSBBa2FzaCBHYWpqYXIKPiA+Pj4gLSBLZXZlciBZYW5nCj4gPj4+IGZvciBzdXBwb3J0
aW5nIGFsbCB0aGUgaGVscCBvbiB0aGlzIHdvcmsuCj4gPj4+Cj4gPj4+IE9uIHN1bW1hcnkgdGhp
cyBzZXJpZXMgc3VwcG9ydAo+ID4+PiAtIENvZGUgd2FybmluZyBhbmQgZml4ZXMKPiA+Pj4gLSBy
YW5rIGRldGVjdGlvbiwgdGhpcyB3b3VsZCByZXF1aXJlZCB0byBwcm9iZSBzaW5nbGUgY2hhbm5l
bAo+ID4+PiBzZHJhbSBjb25maWd1cmVkIGluIE5hbm9QSS1ORU80Cj4gPj4+IC0gTFBERFI0IHN1
cHBvcnQsIHRlc3RlZCBpbiBSb2NrcHJvNjQgYW5kIFJvY2stUEktNAo+ID4+Pgo+ID4+PiBwYXRj
aCAwMDAxIC0gMDAzMzogZml4IGNvZGUgd2FybmluZ3MsIHByaW50cywgbmV3IG1hY3Jvcwo+ID4+
Pgo+ID4+PiBwYXRjaCAwMDM0IC0gMDA1MTogcmFuayBkZXRlY3Rpb24sIHNkcmFtIGRlYnVnIGNv
ZGUKPiA+Pj4KPiA+Pj4gcGF0Y2ggMDA1MjogVXNlIEREUjMtMTgwMCBvbiBOYW5vUEktTkVPNAo+
ID4+Pgo+ID4+PiBwYXRjaCAwMDUzIC0gMDA4OTogbHBkZHI0IHN1cHBvcnQKPiA+Pj4KPiA+Pj4g
cGF0Y2ggMDA5MDogTFBERFI0LTEwMCB0aW1pbmdzCj4gPj4+Cj4gPj4+IHBhdGNoIDAwOTE6IFVz
ZSBMUEREUjQtMTAwIG9uIFJvY2twcm82NAo+ID4+Pgo+ID4+PiBwYXRjaCAwMDkyOiBVc2UgTFBE
RFI0LTEwMCBvbiBSb2NrLVBJIDQKPiA+Pj4KPiA+Pj4gTm90ZTogUHVtYSByazMzOTkgaGFzIFNQ
TCBzaXplIG92ZXJmbG93LCBiZXR0ZXIgdG8gZW5hYmxlIFRQTAo+ID4+PiBmb3IgdGhpcyBib2Fy
ZC4KPiA+Pgo+ID4+IFdlIG5lZWQgdG8ga2VlcCBQdW1hIG9uIGEgU1BMLW9ubHkgY29uZmlndXJh
dGlvbiBmb3IgdGhlIHRpbWUgYmVpbmcuCj4gPj4gUGxlYXNlIG1ha2Ugc3VyZSB0aGF0IHRoZSBM
UEREUjQgY29kZSBpcyBhbiBvcHRpb25hbCBmZWF0dXJlIHRoYXQgZG9lcyBub3QKPiA+PiBpbmNy
ZWFzZSB0aGUgRFJBTS1kcml2ZXIgc2l6ZSBmb3IgYm9hcmRzIHRoYXQgZG9u4oCZdCBuZWVkL3dh
bnQgaXQuCj4gPgo+ID4gV2UgaGF2ZSBmZXcgYm9hcmRzIGRvIGhhdmUgVFBMLXJ1bm5hYmxlLCB3
b3VsZCBiZSBhbnkgdGVjaG5pY2FsIGlzc3VlCj4gPiB0byBzd2l0Y2ggcHVtYSB0byBUUEw/IGJl
Y2F1c2Ugd2UgaGF2ZSBscGRkcjQgY29kZSBwYXJ0IG9mIGV4aXN0aW5nCj4gPiBkcml2ZXIgaXRz
ZWxmIGFuZCBpdCByZXF1aXJlIGV4dHJhIGlmZGVmIHRvIGNvbnNpZGVyIHdoaWNoIGluZGVlZCBs
b29rCj4gPiBhd2Z1bCBmcm9tIGNvZGUgcG9pbnQtb2Ytdmlldy4KPgo+IE91ciBzZWN1cmUgYm9v
dCBwcm9jZXNzIChpLmUuIHNpZ25pbmcgdG9vbHMpIGN1cnJlbnRseSBkZXBlbmRzIG9uIHRoaXMg
YW5kCj4gdGhlIGNoYW5nZW92ZXIgd29u4oCZdCBiZSBxdWlja+KApgoKTm90IHNvIHF1aWNrLCB3
ZSBoYXZlIHRpbWUgdGlsbCBNVy4gaXNuJ3QgaXQgcG9zc2libGU/IGVuYWJsaW5nIHNlY3VyZQp0
b29scyBpbiBib3RoIFRQTCBhbmQgU1BMIG9yIFRQTC1hbG9uZSB3b3VsZCBiZSBtZWFuaW5nZnVs
IHRyYWlsLiB3aGF0CmRvIHlvdSB0aGluaz8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
