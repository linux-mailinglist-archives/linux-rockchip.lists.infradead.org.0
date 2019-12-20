Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0841277BC
	for <lists+linux-rockchip@lfdr.de>; Fri, 20 Dec 2019 10:08:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9dBz5FdMxJcSLb6/z7fxWLyt6b/PmeCGeJF18WxsLU8=; b=V483A/nyGrz2BC
	Bc5aLodOauY4gWnQqjuS8zR4BPQlgN7pQTasU3KiLkLA/CwmnmPa/506IWDEMR8ii9rgfauyT0+QM
	jJYxOTE5WU4eEeth5XvpLLB79M96CePDnlTU/acKG98+JCQtFkKKX9Msv1F7rpw0vLHuNpMXy14D0
	sOezZ1JpfYMBXzPDlWYBF5UW9pyIPNPvLpPW87Tsv2wGDQyeaiwxZABUCM0Y6TBNwv0RJ8PEtBl3C
	y41yvoxEqPElIPzepC5Xpg3ie6f0XHMpxgHUAqlGbKlzRvYh6fNDJrC3B/oSx/GKcBmAo50XfJDbL
	NtDpkjec5tJRfkk5dv6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiEH3-00061d-Ts; Fri, 20 Dec 2019 09:08:41 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiEH0-00061I-Ct
 for linux-rockchip@lists.infradead.org; Fri, 20 Dec 2019 09:08:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 205C7283C51
Subject: Re: RK3399 display flickering after kexec
To: Vicente Bergas <vicencb@gmail.com>,
 Douglas Anderson <dianders@chromium.org>, Sean Paul <seanpaul@chromium.org>
References: <934ab507-6501-455d-b3d6-3585d94d81f6@gmail.com>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <61cd89ec-e505-6a2b-d43f-da74850d1b95@collabora.com>
Date: Fri, 20 Dec 2019 10:08:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <934ab507-6501-455d-b3d6-3585d94d81f6@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_010838_567839_A0A9CF79 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgVmljZW7DpywKCk9uIDEyLzEyLzE5IDIzOjA0LCBWaWNlbnRlIEJlcmdhcyB3cm90ZToKPiBI
aSBFbnJpYywgRG91Z2xhcywgU2VhbiwKPiB0aGVyZSBpcyBhbiBpc3N1ZSBvbiBSSzMzOTktYmFz
ZWQgcGxhdGZvcm1zIHdpdGggZGlzcGxheSBmbGlja2VyaW5nLgo+IEkgaGF2ZSBzZWFyY2hlZCBt
YWlsaW5nIGxpc3QgYW5kIGZvdW5kIHlvdSBoYXZlIG1lbnRpb25lZCBvciB3ZXJlCj4gaW52b2x2
ZWQgaW4gcmVsYXRlZCBpc3N1ZXMsIHNvLCB5b3UgbWF5IGJlIGFibGUgdG8gaGVscC4KPiAKPiBU
aGUgaXNzdWUgaGFzIGJlZW4gb2JzZXJ2ZWQgb24gdGhlIFNhcHBoaXJlIGJvYXJkIGFuZCBvbiBn
b29nbGUga2V2aW4sCj4gYm90aCBhcmUgYmFzZWQgb24gdGhlIFJLMzM5OS4gVGhlIGRpc3BsYXkg
b24gU2FwcGhpcmUgaXMgY29ubmVjdGVkCj4gdGhyb3VnaCBIRE1JIGFuZCBvbiBnb29nbGUga2V2
aW4gaXQncyB0aGUgYnVpbHQtaW4gZURQIHBhbmVsLgo+IAo+IE9uIHRoZSBTYXBwaGlyZSBib2Fy
ZCBpIGhhdmUgdHdvIGJvb3Rsb2FkZXJzIGF2YWlsYWJsZTogdS1ib290IGFuZAo+IGFuIGFkYXB0
YXRpb24gb2YKPiBodHRwczovL2dpdGxhYi5jb20vdmljZW5jYi9rZXZpbmJvb3QKPiB3aGljaCBp
cyBhIGxpbnV4LWJhc2VkIGJvb3Rsb2FkZXIgYnkgbWVhbnMgb2Yga2V4ZWMuCj4gCj4gT24gZ29v
Z2xlIGtldmluIGkgb25seSBoYXZlIG9uZSBib290bG9hZGVyOiBrZXZpbmJvb3Qgd2l0aCBrZXhl
Yy4KPiAKPiBXaGVuIHJ1bm5pbmcgdGhlIGZpcnN0IGtlcm5lbCAoYmVmb3JlIGtleGVjKSBvciB3
aGVuIGJvb3Rpbmcgd2l0aAo+IHUtYm9vdCB0aGUgZGlzcGxheSB3b3JrcyBmaW5lLgo+IAo+IFRo
ZSBpc3N1ZSBhcHBlYXJzIHdoZW4gcnVubmluZyB0aGUgc2Vjb25kIGtlcm5lbCAoYWZ0ZXIga2V4
ZWMpLgo+IEkgaGF2ZSBvYnNlcnZlZCB0d28ga2luZHMgb2YgZmxpY2tlcmluZywgc29tZXRpbWVz
IGl0IGlzIGp1c3QgYnVyc3RzCj4gb2YgaG9yaXpvbnRhbCBkYXJrIGxpbmVzIGFuZCBzb21ldGlt
ZXMgaXQgaXMgdGhlIHdob2xlIHNjcmVlbgo+IGJlY29taW5nIGJsYWNrIGZvciBsZXNzIHRoYW4g
YSBzZWNvbmQuCj4gSXQgaGFwcGVucyB2ZXJ5IG9mdGVuLCBlYWNoIHRpbWUgdGhlcmUgaXMgYSBi
aWcgcG9ydGlvbiBvZiB0aGUgc2NyZWVuCj4gYmVpbmcgdXBkYXRlZCwgbGlrZSwgZS5nLiBzY3Jv
bGxpbmcgYSB0ZXh0IGZpbGUgb3IgYSB3ZWIgcGFnZSBpbiBmdWxsCj4gc2NyZWVuIG1vZGUuCj4g
Cj4gRG8geW91IGhhdmUgYW55IGlkZWFzIG9uIHdoYXQgdGhlIHJvb3QgY2F1c2Ugb2YgdGhlIGlz
c3VlIGNvdWxkIGJlPwo+IAoKVG8gYmUgaG9uZXN0LCBJIGRvbid0IGhhdmUgaWRlYSwgbG9va3Mg
bGlrZSBzb21lIGNsb2NrIGNvbmZpZ3VyYXRpb24gaXNzdWU/IERpZAp5b3UgY2hlY2sgdGhlIGNs
b2NrIGFmdGVyIGFuZCBiZWZvcmU/IEkgbWlnaHQgYmUgaW50ZXJlc3RlZCB0byBsb29rIGEgYml0
IG1vcmUKaW50byB0aGUgaXNzdWUgaWYgdGhpcyBpcyByZXByb2R1Y2libGUgdXNpbmcgdGhlIGNv
cmVib290IGJvb3Rsb2FkZXIuIERvIHlvdQprbm93IGlmIHRoaXMgaGFwcGVucyB3aXRoIHN0b2Nr
IGJvb3Rsb2FkZXI/CgpUaGFua3MsCiBFbnJpYwoKPiBSZWdhcmRzLAo+IMKgVmljZW7Dpy4KPiAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
