Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A18111D903
	for <lists+linux-rockchip@lfdr.de>; Thu, 12 Dec 2019 23:04:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:MIME-Version:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BEDwB2xukypa7mTIhoW1He4SqABx9yb++17uvwZpLcw=; b=Xv9liJ67H8V1LQn8JxqdPGsZOn
	23W3K7dqcApGCDn/KXfyoN6lgdLlmctRlY9seVrBnJCbHXdgWIpMKqROr6ydZb+KR1XZueNcKrPsG
	q1psDS8/loWUmDWthWMIz3qwMHUec5J3YOxxgUECG1S9leFfwufn+F8mbq07tWWKOlHU3q5CXsTG7
	OP+6MYXx5wvIYHblgNaPJs+cv4Yf+ab3vmDGUvTGnbLKmfkXlwQU9dxf3j6uxYKYmIl9k1lu2prgL
	+QXpj1sIzDSRfxPkIQN7LJUQ7002KnltKx33NqUp1c0yrirUFm3lLrpwzbzgvqumzpyCurNRqJI5s
	vIZdiNHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifWZa-0007Yk-EY; Thu, 12 Dec 2019 22:04:38 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifWZX-0007Y1-KC
 for linux-rockchip@lists.infradead.org; Thu, 12 Dec 2019 22:04:37 +0000
Received: by mail-wm1-x32a.google.com with SMTP id w8so854974wmd.3
 for <linux-rockchip@lists.infradead.org>; Thu, 12 Dec 2019 14:04:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:user-agent
 :content-transfer-encoding;
 bh=CeT7Gv+fbQC90Cs+caMtFxZCxRTr8oZKl9qVPA4sDio=;
 b=E5m6MvsdRDQZAHxu1Nj07ivj/ch7ci0Bs+X7MpNqTp+EpyuHNAzkekbQyWxnBicYJn
 Mxbki3R9GKiV3XM5BJcFq9XDgN0DS66//SMBUWIj5Wm7JlE7XPGcy+90mz3OTa3MIhQi
 WfgDkNUsG221kdm40DaznmqBTfRjBF+YNR9CcKpwz0i9Zj4V0tR/q+EKcHqlvGCWvWw1
 8lsAbENVIRc6/1g6FAmuMIehA0mQ0WYpt5AgYVXCJArSzOWIzgJYt4tlVpVPD2T/np/b
 R6u8Gl14HmSSDYf3RowPZx4+TmHfYVXBh2zpV0sCSAcqEOPfTobr1mv7ZeAVsuXTq1YD
 VMAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :user-agent:content-transfer-encoding;
 bh=CeT7Gv+fbQC90Cs+caMtFxZCxRTr8oZKl9qVPA4sDio=;
 b=R/mOQ9hhDS8xdKP7Ke+POt0gF9pH2l7maAIqZlO9gblPvsFk27KIvYALgdvQkb9+uI
 gMgcJkWb5/wpPiyaR9CdK1P+gzT9T2icNyuq4s2VOG2qPDFbvSTeTb/V70k1Ydf8fsdv
 Nglx0Setv1Dg/OeuKOuV8pvb+54UAwpL2vQM/hQQI69ogSA8C+dUKS8iYGMNOC7xHK1a
 gk+/g4fNquydNV1VJzgZvtuX0VKdA+2+FcwGq341LVvoTNHmugXEUEX/pk0iB/K3TUwE
 nDu4J6xXRRZEN3N6oeCnJGUM1sHeLOh5+ASaxknYZyDd9eWpUgUxrSo4viPIxoQFTb+/
 zPwA==
X-Gm-Message-State: APjAAAVytPpY2EQZ/qPRbVp5/y1yTy/Ps/UsfYfljbhhukh7L4xl+kxu
 K/LUMTAOQCdtOUIKGl0Y8Ck=
X-Google-Smtp-Source: APXvYqwzpWSozQJN7QhrhUT8nFtFCDMqpQ10XcERzfRSZSOsskdqzSKOEchv6jdly5F3kpDV9JVq7Q==
X-Received: by 2002:a1c:41c4:: with SMTP id o187mr9180782wma.24.1576188272501; 
 Thu, 12 Dec 2019 14:04:32 -0800 (PST)
Received: from localhost ([5.59.90.131])
 by smtp.gmail.com with ESMTPSA id o6sm3385867wmb.4.2019.12.12.14.04.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 14:04:31 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
To: Douglas Anderson <dianders@chromium.org>,
 Sean Paul <seanpaul@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: RK3399 display flickering after kexec
Date: Thu, 12 Dec 2019 23:04:30 +0100
MIME-Version: 1.0
Message-ID: <934ab507-6501-455d-b3d6-3585d94d81f6@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_140435_696329_B53767B3 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgRW5yaWMsIERvdWdsYXMsIFNlYW4sCnRoZXJlIGlzIGFuIGlzc3VlIG9uIFJLMzM5OS1iYXNl
ZCBwbGF0Zm9ybXMgd2l0aCBkaXNwbGF5IGZsaWNrZXJpbmcuCkkgaGF2ZSBzZWFyY2hlZCBtYWls
aW5nIGxpc3QgYW5kIGZvdW5kIHlvdSBoYXZlIG1lbnRpb25lZCBvciB3ZXJlCmludm9sdmVkIGlu
IHJlbGF0ZWQgaXNzdWVzLCBzbywgeW91IG1heSBiZSBhYmxlIHRvIGhlbHAuCgpUaGUgaXNzdWUg
aGFzIGJlZW4gb2JzZXJ2ZWQgb24gdGhlIFNhcHBoaXJlIGJvYXJkIGFuZCBvbiBnb29nbGUga2V2
aW4sCmJvdGggYXJlIGJhc2VkIG9uIHRoZSBSSzMzOTkuIFRoZSBkaXNwbGF5IG9uIFNhcHBoaXJl
IGlzIGNvbm5lY3RlZAp0aHJvdWdoIEhETUkgYW5kIG9uIGdvb2dsZSBrZXZpbiBpdCdzIHRoZSBi
dWlsdC1pbiBlRFAgcGFuZWwuCgpPbiB0aGUgU2FwcGhpcmUgYm9hcmQgaSBoYXZlIHR3byBib290
bG9hZGVycyBhdmFpbGFibGU6IHUtYm9vdCBhbmQKYW4gYWRhcHRhdGlvbiBvZgpodHRwczovL2dp
dGxhYi5jb20vdmljZW5jYi9rZXZpbmJvb3QKd2hpY2ggaXMgYSBsaW51eC1iYXNlZCBib290bG9h
ZGVyIGJ5IG1lYW5zIG9mIGtleGVjLgoKT24gZ29vZ2xlIGtldmluIGkgb25seSBoYXZlIG9uZSBi
b290bG9hZGVyOiBrZXZpbmJvb3Qgd2l0aCBrZXhlYy4KCldoZW4gcnVubmluZyB0aGUgZmlyc3Qg
a2VybmVsIChiZWZvcmUga2V4ZWMpIG9yIHdoZW4gYm9vdGluZyB3aXRoCnUtYm9vdCB0aGUgZGlz
cGxheSB3b3JrcyBmaW5lLgoKVGhlIGlzc3VlIGFwcGVhcnMgd2hlbiBydW5uaW5nIHRoZSBzZWNv
bmQga2VybmVsIChhZnRlciBrZXhlYykuCkkgaGF2ZSBvYnNlcnZlZCB0d28ga2luZHMgb2YgZmxp
Y2tlcmluZywgc29tZXRpbWVzIGl0IGlzIGp1c3QgYnVyc3RzCm9mIGhvcml6b250YWwgZGFyayBs
aW5lcyBhbmQgc29tZXRpbWVzIGl0IGlzIHRoZSB3aG9sZSBzY3JlZW4KYmVjb21pbmcgYmxhY2sg
Zm9yIGxlc3MgdGhhbiBhIHNlY29uZC4KSXQgaGFwcGVucyB2ZXJ5IG9mdGVuLCBlYWNoIHRpbWUg
dGhlcmUgaXMgYSBiaWcgcG9ydGlvbiBvZiB0aGUgc2NyZWVuCmJlaW5nIHVwZGF0ZWQsIGxpa2Us
IGUuZy4gc2Nyb2xsaW5nIGEgdGV4dCBmaWxlIG9yIGEgd2ViIHBhZ2UgaW4gZnVsbApzY3JlZW4g
bW9kZS4KCkRvIHlvdSBoYXZlIGFueSBpZGVhcyBvbiB3aGF0IHRoZSByb290IGNhdXNlIG9mIHRo
ZSBpc3N1ZSBjb3VsZCBiZT8KClJlZ2FyZHMsCiAgVmljZW7Dpy4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
