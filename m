Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FA4983CB
	for <lists+linux-rockchip@lfdr.de>; Wed, 21 Aug 2019 20:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p46ohZTtq6YVZykr17nORNKCSg25PDN523lSpQLH+GY=; b=RfjL0/WsbqIIuT
	k/ZwRIGi578zCexKdf59wANzweJKJz11cs9GAiC+e2R6r1/2Mz0qcLZC9g+1l+qqVzzjwssVxJ7EC
	P93N0ij86OZ+Lp3ot4DoUbM4tFIzvl/2lZChbPJbXW3PHKhW9Lhx+TcupYW7yjD4SgVy/t5z2O+qJ
	7sUdKQDQIQrblan2JHd0pydbUACjRIoAS+IQFqQlMKLdw4YBflIPE9GCVWeHtYdIjM7pRMYAI0t8d
	Ahx/cD9puCihUdgfm/k/pwI5UEO5ebvAWuvhCJUTEZ8EnNQWwBpYZNTZYpj9NSS0EPpknTijUQ3Aj
	d+yiSNYsDcjKY2fB0wyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Vpl-0003uL-DY; Wed, 21 Aug 2019 18:59:49 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VpY-0003id-OK
 for linux-rockchip@lists.infradead.org; Wed, 21 Aug 2019 18:59:39 +0000
Received: by mail-pg1-x544.google.com with SMTP id p3so1836883pgb.9
 for <linux-rockchip@lists.infradead.org>; Wed, 21 Aug 2019 11:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=mK1H0BvZsgTtsN1s5a6lp4IM3J/uRRiK2PoPe1e2FBo=;
 b=QgfpK50JA0eIc4O+SUBfw4lElixOn+KQxHu2zfLfPhj1We5aBoVJjf+8aaw4BE4d1W
 +M3acVRkCaqLRcIEUW2Rr6upzYiZxPEG0bVknYlce2/PENpcsrEJhAbNOFSB4yNdHBTN
 BmS7j86s5IqAIeqDC+qAbiYArBLkywVcJUdq83mzbQcACZWrTpf5d5pzOFDqXhOTDbZj
 pXTrohVPu7jw/EXdjP6FhIEEO6J+4mqp+MXL9W0TBaMFPkV4sOha6DygB5FUFRrrL8MH
 DN16kfcAfTjim7UKGaoaLogOVKmTnyO2C4ksm/EhLR7bzYIqJoB0/Y+eNyguZXbnN98o
 +4Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=mK1H0BvZsgTtsN1s5a6lp4IM3J/uRRiK2PoPe1e2FBo=;
 b=RudTBK79A8KJxCwbpZnUiQU04TfZpyhLv5TyqBQZaUDTvpfBo8/QRhjRCMwab6Hd2p
 IRKXvUL82oFut2+GJ0T3+DOsdQPnli4FmzH0z8NIPOVDOnnaakLFz1n0ysCeusBuuS4o
 WpgvE4wiECzyXs4HDl5UkSB+WlVzycIj+4W1rmvZ8JPOglydnl7nEkyFKR9OsWvJ9wxM
 560uy16lPgavg46ghqVlSup6SfNjCzcOIla/32pnh0E5+qkAqF5ij4PY0JaqVhZ//1Qc
 FL7hSHjtYnf4fn18yRKTIVG9QAH/kl3R00x/uhwig3Kk/XWTd0FnhrQYE7ojOr+FVaFD
 EvYQ==
X-Gm-Message-State: APjAAAWzA5vGL//juoOetnZqhX5gjnSs36XU4v4js/wVf4uiKkOpkKzh
 vxe4TjL4GmJDgAg7NMu4DODhrg==
X-Google-Smtp-Source: APXvYqzmd1DBEeem+J6VymgZcgptitZGRrRZZYDED2sT/w52SP7MXWbGr5otGq7GgjxXnnaMfcHksA==
X-Received: by 2002:a17:90b:f12:: with SMTP id
 br18mr1368456pjb.127.1566413974806; 
 Wed, 21 Aug 2019 11:59:34 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id a10sm34416479pfl.159.2019.08.21.11.59.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 21 Aug 2019 11:59:34 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: CPUfreq fail on rk3399-firefly (was: next/master boot: 285 boots:
 16 failed, 264 passed with 3 offline, 1 untried/unknown,
 1 conflict (next-20190718))
In-Reply-To: <2314814.WbdfqDVNqK@phil>
References: <5d3057c8.1c69fb81.c6489.8ad2@mx.google.com>
 <20190718162005.GF5761@sirena.org.uk> <7hmugdynmk.fsf@baylibre.com>
 <2314814.WbdfqDVNqK@phil>
Date: Wed, 21 Aug 2019 11:59:33 -0700
Message-ID: <7hv9uq9wfe.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_115936_801599_8497000B 
X-CRM114-Status: GOOD (  24.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 linux-next@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel-build-reports@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Heiko,

Heiko Stuebner <heiko@sntech.de> writes:

> Am Dienstag, 13. August 2019, 19:35:31 CEST schrieb Kevin Hilman:
>> [ resent with correct addr for linux-rockchip list ]
>> 
>> Mark Brown <broonie@kernel.org> writes:
>> 
>> > On Thu, Jul 18, 2019 at 04:28:08AM -0700, kernelci.org bot wrote:
>> >
>> > Today's -next started failing to boot defconfig on rk3399-firefly:
>> >
>> >> arm64:
>> >
>> >>     defconfig:
>> >>         gcc-8:
>> >>             rk3399-firefly: 1 failed lab
>> >
>> > It hits a BUG() trying to set up cpufreq:
>> >
>> > [   87.381606] cpufreq: cpufreq_online: CPU0: Running at unlisted freq: 200000 KHz
>> > [   87.393244] cpufreq: cpufreq_online: CPU0: Unlisted initial frequency changed to: 408000 KHz
>> > [   87.469777] cpufreq: cpufreq_online: CPU4: Running at unlisted freq: 12000 KHz
>> > [   87.488595] cpu cpu4: _generic_set_opp_clk_only: failed to set clock rate: -22
>> > [   87.491881] cpufreq: __target_index: Failed to change cpu frequency: -22
>> > [   87.495335] ------------[ cut here ]------------
>> > [   87.496821] kernel BUG at drivers/cpufreq/cpufreq.c:1438!
>> > [   87.498462] Internal error: Oops - BUG: 0 [#1] PREEMPT SMP
>> >
>> > I'm struggling to see anything relevant in the diff from yesterday, the
>> > unlisted frequency warnings were there in the logs yesterday but no oops
>> > and I'm not seeing any changes in cpufreq, clk or anything relevant
>> > looking.
>> >
>> > Full bootlog and other info can be found here:
>> >
>> > 	https://kernelci.org/boot/id/5d302d8359b51498d049e983/
>> 
>> I confirm that disabling CPUfreq in the defconfig (CONFIG_CPU_FREQ=n)
>> makes the firefly board start working again.
>> 
>> Note that the default defconfig enables the "performance" CPUfreq
>> governor as the default governor, so during kernel boot, it will always
>> switch to the max frequency.
>> 
>> For fun, I set the default governor to "userspace" so the kernel
>> wouldn't make any OPP changes, and that leads to a slightly more
>> informative splat[1]
>> 
>> There is still an OPP change happening because the detected OPP is not
>> one that's listed in the table, so it tries to change to a listed OPP
>> and fails in the bowels of clk_set_rate()
>
> Though I think that might only be a symptom as well.
> Both the PLL setting code as well as the actual cpu-clock implementation
> is unchanged since 2017 (and runs just fine on all boards in my farm).
>
> One source for these issues is often the regulator supplying the cpu
> going haywire - aka the voltage not matching the opp.
>
> As in this error-case it's CPU4 being set, this would mean it might
> be the big cluster supplied by the external syr825 (fan5355 clone)
> that might act up. In the Firefly-rk3399 case this is even stranger.
>
> There is a discrepancy between the "fcs,suspend-voltage-selector"
> between different bootloader versions (how the selection-pin is set up),
> so the kernel might actually write his requested voltage to the wrong
> register (not the one for actual voltage, but the second set used for
> the suspend voltage).
>
> Did you by chance swap bootloaders at some point in recent past?

No, haven't touched bootloader since I initially setup the board.

> I'd assume [2] might actually be the same issue last year, though
> the CI-logs are not available anymore it seems.
>
> Could you try to set the vdd_cpu_b regulator to disabled, so that
> cpufreq for this cluster defers and see what happens?

Yes, this change[1] definitely makes things boot reliably again, so
there's defintiely something a bit unstable with this regulator, at
least on this firefly.

Kevin

[1]
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index c706db0ee9ec..6b70bdcc3328 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -454,6 +454,7 @@
 
 	vdd_cpu_b: regulator@40 {
 		compatible = "silergy,syr827";
+		status = "disabled";
 		reg = <0x40>;
 		fcs,suspend-voltage-selector = <0>;
 		regulator-name = "vdd_cpu_b";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
