Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A80F2192C80
	for <lists+linux-rockchip@lfdr.de>; Wed, 25 Mar 2020 16:29:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3+OkNlhv80CejkK3IeQA6Kd+1wfisFvVNqN0mNTCbY=; b=NOsnbqwjARPzVu
	3VRl67djDQtZ+m66ZmppEijEdkASXvIwwNWkTi9+SSSDHSq0DnAiFW29FVDc7vJaSMZmkj7bDX+3e
	MdETZCxJyk0xYMOLViN5gJ7CmG2jBmLQqHaQSqrzVBYnE2Kbq7Xrd+YSTE8DQS6K5+gMrfDylHRtN
	q/874Zggq4AtXhP4Yda7IGtbW2CZxiAX6fFPbqDPAEKK01ipp1jIhGDBzO/dLiqZEGSBPnk+s+AZu
	yQOCFERzFt5FrXz78jgOqjtIrYbuY/TCk7sf2FIeGf4r9LfT48HE6yOl1PkYG81TEudXDhMNSyuoq
	n7Vfw/iEOcbSfNng1RoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH7yB-0003Jx-Cq; Wed, 25 Mar 2020 15:29:27 +0000
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH7y7-0003Io-74
 for linux-rockchip@lists.infradead.org; Wed, 25 Mar 2020 15:29:25 +0000
Received: from [192.168.2.10] ([46.9.234.233])
 by smtp-cloud8.xs4all.net with ESMTPA
 id H7xijfeSKBr2bH7xljIHs8; Wed, 25 Mar 2020 16:29:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1585150155; bh=WdXxtpAu7Qy0dGjk7oDPYMFVBNZV4Al73YxfsmMk6Ik=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=wA7Kt/YD9qCqA9K5RJ7UzomtDMEAsGDmVqAZPf4CDNxmSsSJSFYAV9j/NKQU4gDK0
 C9Qq53pvEHMyxK9/kR5WL34wOv5fHhxb5xXZar0AkOuIR27XXfxj+gm22CSiUqrOTB
 AV2D7TDAwULbiHQoOtrB9oJHTc+aaM53j1upVAZQnuMlEmXXl4kpStbxJ9ntWjexnt
 ZelOwky4R24PT80X1w4vtm9+TQ9kxJXFwNhxawMztP0NiGOTJjuJCnFJ22xycCVgFG
 hVBUHVvhfc+37AKJST/n1uR5RZFRC1p7lLm1uq+IX3votvsG/MkTX2sV5kGXIxTK7r
 MhuBwvZ7oqbHA==
Subject: Re: [PATCH v2 3/8] hantro: Use v4l2_m2m_buf_done_and_job_finish
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200318132108.21873-1-ezequiel@collabora.com>
 <20200318132108.21873-4-ezequiel@collabora.com>
 <13b1efe1-8b52-070b-cf11-b230bd405d3e@xs4all.nl>
 <0a8f6d97e6869ff694aedd67a3176217a885c938.camel@ndufresne.ca>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <50d764ec-1c15-99bd-192b-9aa6ae5bf368@xs4all.nl>
Date: Wed, 25 Mar 2020 16:28:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <0a8f6d97e6869ff694aedd67a3176217a885c938.camel@ndufresne.ca>
Content-Language: en-US
X-CMAE-Envelope: MS4wfAwLaPPmqQFPbd5FOJJRJcEy4huCHCeranRD3okAXOel+Y8Rvf2TToDPTWdTWuY/kl/h8TamrSb8wbvFLOu3WmeHZw/8KJu70r9dMKKsVFOMuVioxFzP
 UBubyswnwHXyeZrkyEdZQRHRaNW4l00P0tfZIyUThJ+vmMKm+sJFi3GRNyxk3bzTzXMK21DQSgmgxXZHQ+nAHAAtVuwGg697X+QQ48yHBHERPEUc8XXoAyrY
 nhTpLr2l77tLE5OV/AL7qPW9f7FoOuBzmiNP5mTG50lUTbhmUmlFxFZHtwmC6css66acAiIW+5RxcrUI133nub2k6IY2fWlsLNLrfsMwX/N4i23qoPcHX+d3
 7x3rlMVtFrk1jNnXsnr4CYySKi83la9H/oiNh3bqjG8Gb6VLVsRkdiCGdWoTIJWRMfxUB+PvnpsmianyOEI8+PHehR6U8iOBIOTe5rBgWG0/LiGdq0eM65y7
 W2UayCjIML1eiDfvLQOJREsQSggRGH/wZCNIypYinZSm57DUdovJ7bWst9A58AQdunz3bWgQUgXYYs87
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_082923_418913_E0E7B099 
X-CRM114-Status: GOOD (  22.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMy8yNS8yMCAzOjAyIFBNLCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOgo+IExlIG1lcmNyZWRp
IDI1IG1hcnMgMjAyMCDDoCAwOToyMiArMDEwMCwgSGFucyBWZXJrdWlsIGEgw6ljcml0IDoKPj4g
T24gMy8xOC8yMCAyOjIxIFBNLCBFemVxdWllbCBHYXJjaWEgd3JvdGU6Cj4+PiBMZXQgdGhlIGNv
cmUgc29ydCBvdXQgdGhlIG51YW5jZXMgb2YgcmV0dXJuaW5nIGJ1ZmZlcnMKPj4+IHRvIHVzZXJz
cGFjZSwgYnkgdXNpbmcgdGhlIHY0bDJfbTJtX2J1Zl9kb25lX2FuZF9qb2JfZmluaXNoCj4+PiBo
ZWxwZXIuCj4+Pgo+Pj4gVGhpcyBjaGFuZ2UgYWxzbyByZW1vdmVzIHVzYWdlIG9mIGJ1ZmZlciBz
ZXF1ZW5jZSBmaWVsZHMsCj4+PiB3aGljaCBzaG91bGRuJ3QgaGF2ZSBhbnkgbWVhbmluZyBmb3Ig
c3RhdGVsZXNzIGRlY29kZXJzLgo+Pgo+PiBVaCwgd2h5IHJlbW92ZSB0aGlzPyBGb3Igb25lLCBk
b2Vzbid0IHRoaXMgY2F1c2UgZmFpbHMgaW4gdjRsMi1jb21wbGlhbmNlPwo+PiBBbHNvLCB3aGls
ZSBJIGFncmVlIHRoYXQgaXQgaXMgbm90IHRlcnJpYmx5IHVzZWZ1bCwgaXQgZG9lc24ndCBodXJ0
LCBkb2VzIGl0Pwo+Pgo+PiBBbmQgdGhlIFY0TDIgc3BlYyBtYWtlcyBubyBleGNlcHRpb24gZm9y
IHN0YXRlbGVzcyBjb2RlY3Mgd2l0aCByZXNwZWN0IHRvIHRoZQo+PiBzZXF1ZW5jZSBmaWVsZC4K
Pj4KPj4gTmFja2VkLWJ5OiBIYW5zIFZlcmt1aWwgPGh2ZXJrdWlsLWNpc2NvQHhzNGFsbC5ubD4K
PiAKPiBUaGUgc3BlYyBhbHNvIGRvZXMgbm90IHNheSB3aGF0IGl0IG1lYW5zIGVpdGhlci4gQXMg
YW4gZXhhbXBsZSwgeW91Cj4gaGF2ZSBzcGVjIGZvciBBTFRFUk5BVEUgaW50ZXJsYWNpbmcgbW9k
ZSB0aGF0IGNoYW5nZXMgdGhlIG1lYW5pbmcgb2YKPiB0aGUgc2VxdWVuY2UsIGJ1dCBub3QgZm9y
IGFsdGVybmF0ZSBIMjY0IGZpZWxkcyAod2hpY2ggY2Fubm90IGJlIHBhcnQKPiBvZiB0aGUgZm9y
bWF0LCBzaW5jZSB0aGlzIGNoYW5nZXMgb2Z0ZW4pLiBXZSBhbHNvIGRvbid0IGhhdmUgc3BlYyBm
b3IKPiB0aGUgdGhlIHNlcXVlbmNlIGJlaGF2aW91ciB3aGlsZSB1c2luZyBIT0xEIGZlYXR1cmVz
LgoKSSBoYXRlIGl0IHRoYXQgdGhlIHNwZWMgY2hhbmdlcyB0aGUgc2VxdWVuY2UgbWVhbmluZyBm
b3IgRklFTERfQUxURVJOQVRFLApJIGFsd2F5cyB0aG91Z2h0IHRoYXQgdGhhdCBtYWRlIGRyaXZl
cnMgdW5uZWNlc3NhcmlseSBjb21wbGljYXRlZC4gVW5mb3J0dW5hdGVseSwKdGhpcyBpcyBzb21l
dGhpbmcgd2UgaW5oZXJpdGVkLgoKQ3VycmVudGx5IHRoZSBzcGVjIHNheXMgZm9yIHNlcXVlbmNl
OgoKIlNldCBieSB0aGUgZHJpdmVyLCBjb3VudGluZyB0aGUgZnJhbWVzIChub3QgZmllbGRzISkg
aW4gc2VxdWVuY2UuIFRoaXMgZmllbGQgaXMgc2V0CiBmb3IgYm90aCBpbnB1dCBhbmQgb3V0cHV0
IGRldmljZXMuIgoKVGhlIG9ubHkgdGhpbmcgbWlzc2luZyBoZXJlIGlzIHRoYXQgaXQgc2hvdWxk
IHNheSB0aGF0IGZvciBjb21wcmVzc2VkIGZvcm1hdHMgdGhpcwpjb3VudHMgdGhlIGJ1ZmZlcnMs
IHNpbmNlIG9uZSBidWZmZXIgd2l0aCBjb21wcmVzc2VkIGRhdGEgbWF5IG5vdCBoYXZlIGEgb25l
LXRvLW9uZQptYXBwaW5nIHdpdGggZnJhbWVzLgoKVGhpcyBkZXNjcmlwdGlvbiBmb3IgJ3NlcXVl
bmNlJyB3YXMgbmV2ZXIgdXBkYXRlZCB3aGVuIGNvbXByZXNzZWQgZGF0YSBmb3JtYXRzIHdlcmUK
YWRkZWQsIHNvIGl0IGlzIGEgYml0IG91dCBvZiBkYXRlLgoKPiAKPiBJJ20gd29ycmllZCB3ZSBh
cmUgZmFsbGluZyBpbnRvIHRoZSB0ZXN0IGRyaXZlbiB0cmFwLCB3ZXJlIHBlb3BsZQo+IGltcGxl
bWVudCBmZWF0dXJlcyB0byBzYXRpc2Z5IGEgdGVzdCwgd2hpbGUgdGhlIGFkZGVkIGNvbXBsZXhp
dHkgZG9uJ3QKPiByZWFsbHkgbWFrZSBzZW5zZS4gU2hvdWxkbid0IHdlIGNoYW5nZSBvdXIgYXBw
cm9hY2ggYW5kIG9wdC1vdXQKPiBmZWF0dXJlcyBmb3IgbmV3IHR5cGUgb2YgSFcsIHNvIHRoYXQg
d2UgY2FuIGtlZXAgdGhlIGRyaXZlcnMgY29kZQo+IHNhbmVyPwoKV2h5IHdhc24ndCB0aGUgZXhp
c3RpbmcgY29kZSBpbiB0aGlzIHBhdGNoIHNhbmU/IFN1cmUsIHdlIGNhbiBjaGFuZ2UgdGhlIHNw
ZWMsIGJ1dAp0aGVuIDEpIGFsbCBleGlzdGluZyBkcml2ZXJzIG5lZWQgdG8gYmUgdXBkYXRlZCBh
cyB3ZWxsLCBhbmQgMikgdjRsMi1jb21wbGlhbmNlIG5lZWRzCnRvIGJlIGNoYW5nZWQgdG8gdGVz
dCBzcGVjaWZpY2FsbHkgZm9yIHRoaXMgY2xhc3Mgb2YgZHJpdmVycyBhbmQgZW5zdXJlIHRoYXQg
Zm9yIHRob3NlCnRoZSBzZXF1ZW5jZSBmaWVsZCBpcyBzZXQgdG8gMC4gTm90IHRvIG1lbnRpb24g
aW50cm9kdWNpbmcgYW4gZXhjZXB0aW9uIGluIHRoZSB1QVBJCndoZXJlIHRoZSBzZXF1ZW5jZSBm
aWVsZCBzdWRkZW5seSBpc24ndCB1c2VkIGFueW1vcmUuCgpGcmFua2x5LCBJIHdvdWxkIHByZWZl
ciB0aGF0IHRoZSB3aG9sZSBzZXF1ZW5jZSBoYW5kbGluZyBpcyBtb3ZlZCB0byB2aWRlb2J1ZjIt
djRsMi5jLgpJdCByZWFsbHkgZG9lc24ndCBiZWxvbmcgaW4gZHJpdmVycywgd2l0aCB0aGUgZXhj
ZXB0aW9uIG9mIGluY3JlbWVudGluZyB0aGUgc2VxdWVuY2UKY291bnRlciBpbiBjYXNlIG9mIGRy
b3BwZWQgZnJhbWVzLgoKSSB0aGluayBJIHN1Z2dlc3RlZCBpdCB3aGVuIHZiMiB3YXMgYmVpbmcg
ZGVzaWduZWQsIGJ1dCBhdCB0aGUgdGltZSB0aGUgcHJlZmVyZW5jZQp3YXMgdG8ga2VlcCBpdCBp
biB0aGUgZHJpdmVyLiBMb25nIHRpbWUgYWdvLCB0aG91Z2guCgpBbmQgYW5vdGhlciByZWFzb24g
d2h5IEkgd2FudCB0byBrZWVwIGl0OiBJIGZpbmQgaXQgYWN0dWFsbHkgdXNlZnVsIHRvIHNlZSBh
IHJ1bm5pbmcKY291bnRlcjogaXQgaGVscHMga2VlcGluZyB0cmFjayBvZiBob3cgbWFueSBidWZm
ZXJzIHlvdSd2ZSBwcm9jZXNzZWQgc2luY2UgeW91IHN0YXJ0ZWQKc3RyZWFtaW5nLgoKRmluYWxs
eSwgdGhlIHJlbW92YWwgb2YgdGhlIHNlcXVlbmNlIGNvdW50ZXIgc2ltcGx5IGRvZXMgbm90IGJl
bG9uZyBpbiB0aGlzIHBhdGNoLgoKUmVnYXJkcywKCglIYW5zCgo+IAo+Pgo+PiBSZWdhcmRzLAo+
Pgo+PiAJSGFucwo+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogRXplcXVpZWwgR2FyY2lhIDxlemVxdWll
bEBjb2xsYWJvcmEuY29tPgo+Pj4gLS0tCj4+PiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRy
by9oYW50cm9fZHJ2LmMgfCAyNyArKysrKysrKy0tLS0tLS0tLS0tLS0tLQo+Pj4gIDEgZmlsZSBj
aGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYyBiL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4+PiBpbmRleCAwYjEyMDBmYzBlMWEu
LmVjODg5ZDc1NWNkNiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50
cm8vaGFudHJvX2Rydi5jCj4+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hh
bnRyb19kcnYuYwo+Pj4gQEAgLTk0LDMyICs5NCwyMyBAQCBzdGF0aWMgdm9pZCBoYW50cm9fam9i
X2ZpbmlzaChzdHJ1Y3QgaGFudHJvX2RldiAqdnB1LAo+Pj4gIAkJCSAgICAgIHVuc2lnbmVkIGlu
dCBieXRlc3VzZWQsCj4+PiAgCQkJICAgICAgZW51bSB2YjJfYnVmZmVyX3N0YXRlIHJlc3VsdCkK
Pj4+ICB7Cj4+PiAtCXN0cnVjdCB2YjJfdjRsMl9idWZmZXIgKnNyYywgKmRzdDsKPj4+ICAJaW50
IHJldDsKPj4+ICAKPj4+ICAJcG1fcnVudGltZV9tYXJrX2xhc3RfYnVzeSh2cHUtPmRldik7Cj4+
PiAgCXBtX3J1bnRpbWVfcHV0X2F1dG9zdXNwZW5kKHZwdS0+ZGV2KTsKPj4+ICAJY2xrX2J1bGtf
ZGlzYWJsZSh2cHUtPnZhcmlhbnQtPm51bV9jbG9ja3MsIHZwdS0+Y2xvY2tzKTsKPj4+ICAKPj4+
IC0Jc3JjID0gdjRsMl9tMm1fc3JjX2J1Zl9yZW1vdmUoY3R4LT5maC5tMm1fY3R4KTsKPj4+IC0J
ZHN0ID0gdjRsMl9tMm1fZHN0X2J1Zl9yZW1vdmUoY3R4LT5maC5tMm1fY3R4KTsKPj4+IC0KPj4+
IC0JaWYgKFdBUk5fT04oIXNyYykpCj4+PiAtCQlyZXR1cm47Cj4+PiAtCWlmIChXQVJOX09OKCFk
c3QpKQo+Pj4gLQkJcmV0dXJuOwo+Pj4gLQo+Pj4gLQlzcmMtPnNlcXVlbmNlID0gY3R4LT5zZXF1
ZW5jZV9vdXQrKzsKPj4+IC0JZHN0LT5zZXF1ZW5jZSA9IGN0eC0+c2VxdWVuY2VfY2FwKys7Cj4+
PiAtCj4+PiAtCXJldCA9IGN0eC0+YnVmX2ZpbmlzaChjdHgsICZkc3QtPnZiMl9idWYsIGJ5dGVz
dXNlZCk7Cj4+PiAtCWlmIChyZXQpCj4+PiAtCQlyZXN1bHQgPSBWQjJfQlVGX1NUQVRFX0VSUk9S
Owo+Pj4gKwlpZiAoY3R4LT5idWZfZmluaXNoKSB7Cj4+PiArCQlzdHJ1Y3QgdmIyX3Y0bDJfYnVm
ZmVyICpkc3Q7Cj4+PiAgCj4+PiAtCXY0bDJfbTJtX2J1Zl9kb25lKHNyYywgcmVzdWx0KTsKPj4+
IC0JdjRsMl9tMm1fYnVmX2RvbmUoZHN0LCByZXN1bHQpOwo+Pj4gKwkJZHN0ID0gdjRsMl9tMm1f
bmV4dF9kc3RfYnVmKGN0eC0+ZmgubTJtX2N0eCk7Cj4+PiArCQlyZXQgPSBjdHgtPmJ1Zl9maW5p
c2goY3R4LCAmZHN0LT52YjJfYnVmLCBieXRlc3VzZWQpOwo+Pj4gKwkJaWYgKHJldCkKPj4+ICsJ
CQlyZXN1bHQgPSBWQjJfQlVGX1NUQVRFX0VSUk9SOwo+Pj4gKwl9Cj4+PiAgCj4+PiAtCXY0bDJf
bTJtX2pvYl9maW5pc2godnB1LT5tMm1fZGV2LCBjdHgtPmZoLm0ybV9jdHgpOwo+Pj4gKwl2NGwy
X20ybV9idWZfZG9uZV9hbmRfam9iX2ZpbmlzaChjdHgtPmRldi0+bTJtX2RldiwgY3R4LT5maC5t
Mm1fY3R4LAo+Pj4gKwkJCQkJIHJlc3VsdCk7Cj4+PiAgfQo+Pj4gIAo+Pj4gIHZvaWQgaGFudHJv
X2lycV9kb25lKHN0cnVjdCBoYW50cm9fZGV2ICp2cHUsIHVuc2lnbmVkIGludCBieXRlc3VzZWQs
Cj4+Pgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
