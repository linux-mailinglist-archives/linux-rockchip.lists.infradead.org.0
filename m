Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E8D2434E
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 May 2019 00:01:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uG5L1PDdc0gyIR+2kBtFdkhQZgTfg4nudDhZlXhpb/g=; b=lkImiLI+OVmyPF
	gDJXK82zpnAssSkW4mHpVVC2TmMCT63PH/pINEiKubQD5fKdqP25v3WtcBMlz4DIMumWNvJnS1BzT
	1EQdtmCzIeesxgAFtYHaC5O3Fab6HkuGOUf0IgHu9GdYvVjAUAVgHF2CnpWrMhuQN8ZeayA044zFf
	Me5bBJGfc5P2MD45weaUj/qFR2fxWcQ6yGIt852pswQwQss783cbMt8W6FCtYaUBxaheiSIHNKzOX
	kuCAecCzO9i8AK5/fLKlEAyFYSRA2jc+vAaO9YwLs+Op222LGHbNUuRt78yyi1HkvUwvBbZig+vGw
	7fOD96cM2GrQO6aiZcqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSqLS-0001MU-GC; Mon, 20 May 2019 22:01:22 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSqL6-0000wD-AN
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 22:01:02 +0000
Received: by mail-pl1-x642.google.com with SMTP id f12so7336468plt.8
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 15:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AhecyL2qQDBC3MCxt/zq3Kbo+pVDpSa4FZM2PC318KM=;
 b=Z29uCy48sLghmNEdhhMQV0TpJwla5O9kSHf07Kq1yjC7hxkrawcDlwcEoypi9ODm+q
 n2wRZpZ1LIgMMfnJ6PFTBpPuoRTwNeP9123yeA2DpRntUT8mJfxDahavhiUY5qg6j34u
 VtKZ+kG4sPm3iPzYFN/QPEO/zwnxl/apQ8iGI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AhecyL2qQDBC3MCxt/zq3Kbo+pVDpSa4FZM2PC318KM=;
 b=ZHzkECLReu0nWZ+tZIGpgmmhnoFnSBZM+uxojuWnlNi9QwePdZRF7K0OAAJblt7Pz9
 Y54HR+J08BKL4V/Im/4AA9ZhICSjOahgYtkuv9FWch9aUHPowvyF+t6zRmoa4lIXK1nd
 hJAPfeA+HeXuCG4xRvEqdf5W4QEmFs7OEKhDtlef+KWi4gojSI5Tza/aKzcVf+rJM5HC
 cprSfP9cfUrf82X7nKBpFX7kXL9Y8HtjTUrRqd0L1GaU1abJzpyuV/gkzY/I10aRQNcO
 e3dfRCDBiDnFydVPX5Cn528ZBTg8ijcVEY0PN/TLWSBwzGm6EcRm1jptKjaMW2IIdRxT
 wHlw==
X-Gm-Message-State: APjAAAUqtgP2DUyeWzIfsOcL5cI4qAbXIYOQkOlvDqjQdVcCV71maYM3
 bXvFNmOyJuZWVjQWe31eRvatsw==
X-Google-Smtp-Source: APXvYqw/+0hzgI+vOKWf7oG9dIM+CdVU0SsWOEYDBUI9M09FHn5cLFKmvyy5ff7yHB0Q6vF8xTU8XQ==
X-Received: by 2002:a17:902:8ec4:: with SMTP id
 x4mr68111479plo.249.1558389659959; 
 Mon, 20 May 2019 15:00:59 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id u66sm21907479pfb.76.2019.05.20.15.00.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 15:00:59 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 2/3] ARM: dts: rockchip: Use the GPU to cool CPU thermal
 zone of veyron mickey
Date: Mon, 20 May 2019 15:00:50 -0700
Message-Id: <20190520220051.54847-2-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190520220051.54847-1-mka@chromium.org>
References: <20190520220051.54847-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_150100_356063_32294B54 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gcmszMjg4IHRoZSBDUFUgYW5kIEdQVSB0ZW1wZXJhdHVyZXMgYXJlIGNvcnJlbGF0ZWQuIExp
bWl0IHRoZSBHUFUKZnJlcXVlbmN5IG9uIHZleXJvbiBtaWNrZXkgdG8gNDAwIE1IeiBmb3IgQ1BV
IHRlbXBlcmF0dXJlcyA+PSA2NcKwQwphbmQgdG8gMzAwIE1IeiBmb3IgQ1BVIHRlbXBlcmF0dXJl
cyA+PSA4NcKwQy4KClRoaXMgbWF0Y2hlcyB0aGUgY29uZmlndXJhdGlvbiBvZiB0aGUgZG93bnN0
cmVhbSBDaHJvbWUgT1MgMy4xNCBrZXJuZWwsCnRoZSAnb2ZmaWNpYWwnIGtlcm5lbCBmb3IgbWlj
a2V5LgoKU2lnbmVkLW9mZi1ieTogTWF0dGhpYXMgS2FlaGxja2UgPG1rYUBjaHJvbWl1bS5vcmc+
Ci0tLQpDaGFuZ2VzIGluIHYyOgotIGFkZGVkICdjcHVfd2FybV9saW1pdF9ncHUnIHRvIHRocm90
dGxlIEdQVSBmb3IgVC5jcHUgPj0gNjXCsEMKLSByZW1vdmVkIGNvbW1lbnQgc2F5aW5nIHRoYXQg
R1BVIGlzbid0IHRocm90dGxlZCBiZXlvbmQgNDAwIE1IegogIGJhc2VkIG9uIENQVSB0ZW1wZXJh
dHVyZQotIHVwZGF0ZWQgY29tbWl0IG1lc3NhZ2UKCk5vdGU6IHRoaXMgcGF0Y2ggZGVwZW5kcyBv
biAiQVJNOiBkdHM6IHJvY2tjaGlwOiBBZGQgI2Nvb2xpbmctY2VsbHMKZW50cnkgZm9yIHJrMzI4
OCBHUFUiIChodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdvcmsvcGF0Y2gvMTA3NTAwNS8p
Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1taWNrZXkuZHRzIHwgMTQgKysr
KysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tbWlja2V5
LmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tbWlja2V5LmR0cwppbmRleCA1
MmY2YWJjMjIyOTEuLjM0Nzk3YWJlMzQwMyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMv
cmszMjg4LXZleXJvbi1taWNrZXkuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12
ZXlyb24tbWlja2V5LmR0cwpAQCAtNzUsOSArNzUsNyBAQAogCWNvb2xpbmctbWFwcyB7CiAJCS8q
CiAJCSAqIEFmdGVyIDFzdCBsZXZlbCwgdGhyb3R0bGUgdGhlIENQVSBkb3duIHRvIGFzIGxvdyBh
cyAxLjQgR0h6Ci0JCSAqIGFuZCBkb24ndCBsZXQgdGhlIEdQVSBnbyBmYXN0ZXIgdGhhbiA0MDAg
TUh6LiAgTm90ZSB0aGF0IHdlCi0JCSAqIHdvbid0IHRocm90dGxlIHRoZSBHUFUgbG93ZXIgdGhh
biA0MDAgTUh6IGR1ZSB0byBDUFUKLQkJICogaGVhdC0td2UnbGwgbGV0IHRoZSBHUFUgZG8gdGhl
IHJlc3QgaXRzZWxmLgorCQkgKiBhbmQgZG9uJ3QgbGV0IHRoZSBHUFUgZ28gZmFzdGVyIHRoYW4g
NDAwIE1Iei4KIAkJICovCiAJCWNwdV93YXJtX2xpbWl0X2NwdSB7CiAJCQl0cmlwID0gPCZjcHVf
YWxlcnRfd2FybT47CkBAIC04Niw2ICs4NCwxMCBAQAogCQkJCQkgPCZjcHUyIFRIRVJNQUxfTk9f
TElNSVQgND4sCiAJCQkJCSA8JmNwdTMgVEhFUk1BTF9OT19MSU1JVCA0PjsKIAkJfTsKKwkJY3B1
X3dhcm1fbGltaXRfZ3B1IHsKKwkJCXRyaXAgPSA8JmNwdV9hbGVydF93YXJtPjsKKwkJCWNvb2xp
bmctZGV2aWNlID0gPCZncHUgMSAxPjsKKwkJfTsKIAogCQkvKgogCQkgKiBBZGQgc29tZSBkaXNj
cmV0ZSBzdGVwcyB0byBoZWxwIHRocm90dGxpbmcgc3lzdGVtIGRlYWwKQEAgLTEyNSw2ICsxMjcs
MTIgQEAKIAkJCQkJIDwmY3B1MiA4IFRIRVJNQUxfTk9fTElNSVQ+LAogCQkJCQkgPCZjcHUzIDgg
VEhFUk1BTF9OT19MSU1JVD47CiAJCX07CisKKwkJLyogQXQgdmVyeSBob3QsIGRvbid0IGxldCBH
UFUgZ28gb3ZlciAzMDAgTUh6ICovCisJCWNwdV92ZXJ5X2hvdF9saW1pdF9ncHUgeworCQkJdHJp
cCA9IDwmY3B1X2FsZXJ0X3ZlcnlfaG90PjsKKwkJCWNvb2xpbmctZGV2aWNlID0gPCZncHUgMiAy
PjsKKwkJfTsKIAl9OwogfTsKIAotLSAKMi4yMS4wLjEwMjAuZ2YyODIwY2YwMWEtZ29vZwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
