Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B3519F5F0
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Apr 2020 14:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8ijKnZ55RRSE9To0WMO2ObcpvoQqi8WsJw4mge0Te/I=; b=YEdI2YzUPEo5DC9areTc5rLog
	CWnxOdkA/4JZyZUMf9jBAt9F2Q7ExxS3AZXKc7scBqKHgegWgFaJaHVXBzVajRqYNpKAhoNedZteE
	CQkVb28780MBfCQYoWgAvflMOVf+wa08ZIzKNW7vC9go7PqkLcFlFzV0S/w+35zhCitwi9ALWUaAE
	BbcX9KeaFD8hvtqZrwU9OTID/q5KguLI84WrJOqWWUY85T0q/ToKE5xmK2UIpGEFgj5YGVb5zUEAL
	1EhUnL1ve7WePLzwaiPzaAyZI2ZuVkcikWYJGhnzJnqcBSWdgLdbD/nLf4jeeOSu5eWi1nzd0Ys7w
	v0ApI4Sug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLR3K-0007BV-LJ; Mon, 06 Apr 2020 12:40:34 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLR3H-0007Ar-JO
 for linux-rockchip@lists.infradead.org; Mon, 06 Apr 2020 12:40:33 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 961B428BDAC
Subject: Re: [PATCH v2 4/5] media: staging: rkisp1: cap: support uv swapped
 plane formats
To: Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20200402190419.15155-1-dafna.hirschfeld@collabora.com>
 <20200402190419.15155-5-dafna.hirschfeld@collabora.com>
 <20200405181623.GQ5846@pendragon.ideasonboard.com>
 <e3b8728b-7146-30b5-2312-1b4cbac52c27@collabora.com>
 <bd60332d-ceea-1ba9-5ab9-b9dc4883a7cd@collabora.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <1904e107-536b-799a-3196-1a3b403dbe13@collabora.com>
Date: Mon, 6 Apr 2020 14:40:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <bd60332d-ceea-1ba9-5ab9-b9dc4883a7cd@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_054031_763455_A390083A 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: dafna3@gmail.com, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

CgpPbiA0LzYvMjAgMjoyNyBQTSwgSGVsZW4gS29pa2Ugd3JvdGU6Cj4gSGksCj4gCj4gT24gNC82
LzIwIDg6NTYgQU0sIERhZm5hIEhpcnNjaGZlbGQgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDQvNS8yMCA4
OjE2IFBNLCBMYXVyZW50IFBpbmNoYXJ0IHdyb3RlOgo+Pj4gSGkgRGFmbmEsCj4+Pgo+Pj4gVGhh
bmsgeW91IGZvciB0aGUgcGF0Y2guCj4+Pgo+Pj4gT24gVGh1LCBBcHIgMDIsIDIwMjAgYXQgMDk6
MDQ6MThQTSArMDIwMCwgRGFmbmEgSGlyc2NoZmVsZCB3cm90ZToKPj4+PiBQbGFuZSBmb3JtYXRz
IHdpdGggdGhlIHUgYW5kIHYgcGxhbmVzIHN3YXBwZWQgY2FuIGJlCj4+Pj4gc3VwcG9ydGVkIGJ5
IGNoYW5naW5nIHRoZSBhZGRyZXNzIG9mIHRoZSBjYiBhbmQgY3IgaW4KPj4+PiB0aGUgYnVmZmVy
Lgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogRGFmbmEgSGlyc2NoZmVsZCA8ZGFmbmEuaGlyc2No
ZmVsZEBjb2xsYWJvcmEuY29tPgo+Pj4+IEFja2VkLWJ5OiBIZWxlbiBLb2lrZSA8aGVsZW4ua29p
a2VAY29sbGFib3JhLmNvbT4KPj4+PiAtLS0KPj4+PiAgwqAgZHJpdmVycy9zdGFnaW5nL21lZGlh
L3JraXNwMS9ya2lzcDEtY2FwdHVyZS5jIHwgMTcgKysrKysrKysrKysrKysrKysKPj4+PiAgwqAg
MSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL3JraXNwMS1jYXB0dXJlLmMgYi9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvcmtpc3AxL3JraXNwMS1jYXB0dXJlLmMKPj4+PiBpbmRleCBmYTI4NDkyMDk0
MzMuLjJkMjc0ZThmNTY1YiAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
cmtpc3AxL3JraXNwMS1jYXB0dXJlLmMKPj4+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
cmtpc3AxL3JraXNwMS1jYXB0dXJlLmMKPj4+PiBAQCAtNDEsNiArNDEsMTAgQEAKPj4+PiAgwqDC
oMKgwqDCoCAoKCh3cml0ZV9mb3JtYXQpID09IFJLSVNQMV9NSV9DVFJMX01QX1dSSVRFX1lVVl9T
UExBKSB8fMKgwqDCoCBcCj4+Pj4gIMKgwqDCoMKgwqDCoCAoKHdyaXRlX2Zvcm1hdCkgPT0gUktJ
U1AxX01JX0NUUkxfU1BfV1JJVEVfU1BMQSkpCj4+Pj4gIMKgICsjZGVmaW5lIFJLSVNQMV9JU19Q
TEFOQVIod3JpdGVfZm9ybWF0KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IFwKPj4+PiArwqDCoMKgICgoKHdyaXRlX2Zvcm1hdCkgPT0gUktJU1AxX01JX0NUUkxfU1BfV1JJ
VEVfUExBKSB8fMKgwqDCoMKgwqDCoMKgIFwKPj4+PiArwqDCoMKgwqAgKCh3cml0ZV9mb3JtYXQp
ID09IFJLSVNQMV9NSV9DVFJMX01QX1dSSVRFX1lVVl9QTEFfT1JfUkFXOCkpCj4+Pj4gKwo+Pj4+
ICDCoCBlbnVtIHJraXNwMV9wbGFuZSB7Cj4+Pj4gIMKgwqDCoMKgwqAgUktJU1AxX1BMQU5FX1nC
oMKgwqAgPSAwLAo+Pj4+ICDCoMKgwqDCoMKgIFJLSVNQMV9QTEFORV9DQsKgwqDCoCA9IDEsCj4+
Pj4gQEAgLTc4OCw2ICs3OTIsMTkgQEAgc3RhdGljIHZvaWQgcmtpc3AxX3ZiMl9idWZfcXVldWUo
c3RydWN0IHZiMl9idWZmZXIgKnZiKQo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBy
a2lzcDFfcGl4Zm10X2NvbXBfc2l6ZShwaXhtLCBSS0lTUDFfUExBTkVfQ0IpOwo+Pj4+ICDCoMKg
wqDCoMKgIH0KPj4+PiAgwqAgK8KgwqDCoCAvKgo+Pj4+ICvCoMKgwqDCoCAqIHV2IHN3YXAgY2Fu
IGJlIHN1cHBvcnRlZCBmb3IgcGxhbmUgZm9ybWF0cyBieSBzd2l0Y2hpbmcKPj4+PiArwqDCoMKg
wqAgKiB0aGUgYWRkcmVzcyBvZiBjYiBhbmQgY3IKPj4+PiArwqDCoMKgwqAgKi8KPj4+PiArwqDC
oMKgIGlmIChSS0lTUDFfSVNfUExBTkFSKGNhcC0+cGl4LmNmZy0+d3JpdGVfZm9ybWF0KSAmJgo+
Pj4KPj4+IEFzIGNvbW1lbnRlZCBvbiBwYXRjaCAzLzUsIGNvdWxkIHRoaXMgYmUgY2hlY2tlZCBm
cm9tIHRoZSBkYXRhIGluCj4+PiB2NGwyX2Zvcm1hdF9pbmZvID8KPj4geWVzCj4+Pgo+Pj4+ICvC
oMKgwqDCoMKgwqDCoCBjYXAtPnBpeC5jZmctPnV2X3N3YXApIHsKPj4+PiArwqDCoMKgwqDCoMKg
wqAgaXNwYnVmLT5idWZmX2FkZHJbUktJU1AxX1BMQU5FX0NSXSA9Cj4+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgaXNwYnVmLT5idWZmX2FkZHJbUktJU1AxX1BMQU5FX0NCXTsKPj4+PiArwqDC
oMKgwqDCoMKgwqAgaXNwYnVmLT5idWZmX2FkZHJbUktJU1AxX1BMQU5FX0NCXSA9Cj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaXNwYnVmLT5idWZmX2FkZHJbUktJU1AxX1BMQU5FX0NSXSAr
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmtpc3AxX3BpeGZtdF9jb21wX3NpemUocGl4
bSwgUktJU1AxX1BMQU5FX0NSKTsKPiAKPiBBY3R1YWxseSB0aGlzIGlzIHdyb25nIGlmIHBpeG0t
Pm51bV9wbGFuZXMgIT0gMSwgc2luY2UgdGhleSBhcmUgZGlmZmVyZW50IGJ1ZmZlcnMuCkhpLCBy
aWdodCwgSSB3aWxsIGNoYW5nZSB0byBzd2FwCgpUaGFua3MsCkRhZm5hCj4gCj4+Pgo+Pj4gSG93
IGFib3V0Cj4+Pgo+Pj4gIMKgwqDCoMKgwqDCoMKgIHN3YXAoaXNwYnVmLT5idWZmX2FkZHJbUktJ
U1AxX1BMQU5FX0NSXSwKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaXNwYnVmLT5idWZm
X2FkZHJbUktJU1AxX1BMQU5FX0NCXSk7Cj4+Pgo+Pj4gPwo+PiBUaGlzIGFsc28gd29ya3MsIHRo
ZW9yZXRpY2FsbHkgaWYgdGhlcmUgd2FzIGEgZm9ybWF0IHdoZXJlIHRoZSBDYiwgQ3IgcGxhbmVz
Cj4+IGFyZSBub3QgZXF1YWwgc2l6ZSB0aGVuIGEgc3dhcCB3aWxsIG5vdCB3b3JrLgo+IAo+IElm
IHlvdSBjaGVjayBya2lzcDFfZmlsbF9waXhmbXQoKSwgeW91J2xsIHNlZSB0aGF0IHRoZXkgYXJl
IGVxdWFsIHNpemUuCj4gaGRpdiBhbmQgdmRpdiBhcHBsaWVzIHRvIGJvdGguCj4gCj4gVGhhbmsg
eW91IExhdXJlbnQgZm9yIHRoZSByZXZpZXcgYW5kIHRoYW5rIHlvdSBEYWZuYSBmb3Igd29ya2lu
ZyBvbiB0aGlzLgo+IAo+IFJlZ2FyZHMsCj4gSGVsZW4KPiAKPj4KPj4gVGhhbmtzLAo+PiBEYWZu
YQo+Pj4KPj4+PiArwqDCoMKgIH0KPj4+PiArCj4+Pj4gIMKgwqDCoMKgwqAgc3Bpbl9sb2NrX2ly
cXNhdmUoJmNhcC0+YnVmLmxvY2ssIGZsYWdzKTsKPj4+PiAgwqAgwqDCoMKgwqDCoCAvKgo+Pj4K
Pj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
